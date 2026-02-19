import { describe, it, expect } from "vitest";
import {
  detectDirective,
  extractModuleName,
  segmentsToNextPath,
  kindToFileName,
  kindToDeclName,
  generateTsx,
  Static,
  Dynamic,
  CatchAll,
  OptCatchAll,
} from "../output-loader/Loader.Main/index.js";
import * as Maybe from "../output-loader/Data.Maybe/index.js";

const just = (v: string) => new (Maybe.Just as any)(v);
const nothing = Maybe.Nothing.value;

const unwrap = (m: any): string | null =>
  m instanceof Maybe.Just ? m.value0 : null;

// --- detectDirective ---

describe("detectDirective", () => {
  it("detects -- @client comment", () => {
    const src = "module Foo where\n-- @client\nimport Prelude";
    expect(unwrap(detectDirective("Foo")(src))).toBe("use client");
  });

  it("detects -- @server comment", () => {
    const src = "module Foo where\n-- @server\nimport Prelude";
    expect(unwrap(detectDirective("Foo")(src))).toBe("use server");
  });

  it("detects .Client in module name", () => {
    expect(unwrap(detectDirective("Page.Home.Client")(""))).toBe("use client");
  });

  it("detects .Server in module name", () => {
    expect(unwrap(detectDirective("Page.Home.Server")(""))).toBe("use server");
  });

  it("detects Actions. prefix in module name", () => {
    expect(unwrap(detectDirective("Actions.Login")(""))).toBe("use server");
  });

  it("returns Nothing when no directive matches", () => {
    const src = "module Page.Home where\nimport Prelude";
    expect(detectDirective("Page.Home")(src)).toBe(nothing);
  });
});

// --- extractModuleName ---

describe("extractModuleName", () => {
  it("extracts from a normal module declaration", () => {
    expect(unwrap(extractModuleName("module Foo.Bar where\n"))).toBe(
      "Foo.Bar"
    );
  });

  it("extracts from a module with exports list", () => {
    expect(unwrap(extractModuleName("module Foo.Bar (baz) where\n"))).toBe(
      "Foo.Bar"
    );
  });

  it("returns Nothing for malformed source", () => {
    expect(extractModuleName("just some random text")).toBe(nothing);
  });
});

// --- segmentsToNextPath ---

describe("segmentsToNextPath", () => {
  const seg = (C: any, v: string) => new C(v);

  it("maps Static to plain string", () => {
    expect(segmentsToNextPath([seg(Static, "blog")])).toEqual(["blog"]);
  });

  it("maps Dynamic to [slug]", () => {
    expect(segmentsToNextPath([seg(Dynamic, "slug")])).toEqual(["[slug]"]);
  });

  it("maps CatchAll to [...slug]", () => {
    expect(segmentsToNextPath([seg(CatchAll, "slug")])).toEqual(["[...slug]"]);
  });

  it("maps OptCatchAll to [[...slug]]", () => {
    expect(segmentsToNextPath([seg(OptCatchAll, "slug")])).toEqual([
      "[[...slug]]",
    ]);
  });

  it("handles mixed segments", () => {
    expect(
      segmentsToNextPath([seg(Static, "blog"), seg(Dynamic, "id")])
    ).toEqual(["blog", "[id]"]);
  });
});

// --- kindToFileName ---

describe("kindToFileName", () => {
  it('maps "notFound" to "not-found"', () => {
    expect(kindToFileName("notFound")).toBe("not-found");
  });

  it("passes through other kinds", () => {
    expect(kindToFileName("page")).toBe("page");
    expect(kindToFileName("layout")).toBe("layout");
    expect(kindToFileName("error")).toBe("error");
    expect(kindToFileName("loading")).toBe("loading");
  });
});

// --- kindToDeclName ---

describe("kindToDeclName", () => {
  it('maps "error" to "error"', () => {
    expect(kindToDeclName("error")).toBe("error");
  });

  it("passes through other kinds", () => {
    expect(kindToDeclName("page")).toBe("page");
    expect(kindToDeclName("layout")).toBe("layout");
    expect(kindToDeclName("notFound")).toBe("notFound");
  });
});

// --- generateTsx ---

describe("generateTsx", () => {
  const mkRoute = (overrides: Record<string, any>) => ({
    mod: "Page.Home",
    kind: "page",
    filePath: "app/page.tsx",
    relImport: "../output/Page.Home/index.js",
    routePath: "app",
    directive: nothing,
    ...overrides,
  });

  it("client component gets 'use client' directive", () => {
    const tsx = generateTsx(mkRoute({ directive: just("use client") }));
    expect(tsx).toMatch(/^"use client";/);
  });

  it("server page gets async wrapper with params", () => {
    const tsx = generateTsx(mkRoute({ kind: "page" }));
    expect(tsx).toContain("async function(props)");
    expect(tsx).toContain("await (props.params");
    expect(tsx).toContain("await (props.searchParams");
    expect(tsx).not.toMatch(/^"use client"/);
    expect(tsx).not.toMatch(/^"use server"/);
  });

  it("layout passes props through", () => {
    const tsx = generateTsx(mkRoute({ kind: "layout" }));
    expect(tsx).toContain("render(props)");
    expect(tsx).not.toContain("params");
  });

  it("error boundary always gets 'use client'", () => {
    const tsx = generateTsx(mkRoute({ kind: "error" }));
    expect(tsx).toMatch(/^"use client";/);
  });

  it("loading page uses no-arg render call", () => {
    const tsx = generateTsx(mkRoute({ kind: "loading" }));
    expect(tsx).toContain("render()");
    expect(tsx).not.toContain("props");
  });

  it("notFound page uses no-arg render call", () => {
    const tsx = generateTsx(mkRoute({ kind: "notFound" }));
    expect(tsx).toContain("render()");
  });

  it("includes marker comment", () => {
    const tsx = generateTsx(mkRoute({}));
    expect(tsx).toContain("@generated by purescript-rsc");
  });

  it("includes import from relImport", () => {
    const tsx = generateTsx(
      mkRoute({ relImport: "../output/Page.Foo/index.js" })
    );
    expect(tsx).toContain('"../output/Page.Foo/index.js"');
  });
});
