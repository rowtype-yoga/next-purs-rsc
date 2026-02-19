import { describe, it, expect, beforeAll, afterAll } from "vitest";
import fs from "node:fs";
import path from "node:path";
import os from "node:os";

describe("purescript-rsc-loader", () => {
  let tmpDir: string;
  let loader: (this: any, source: string) => string;

  beforeAll(async () => {
    tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), "purs-rsc-test-"));
    const mod = await import("../purescript-rsc-loader.js");
    loader = mod.default;
  });

  afterAll(() => {
    fs.rmSync(tmpDir, { recursive: true, force: true });
  });

  function callLoader(source: string, resourcePath: string, rootDir?: string) {
    return loader.call(
      { rootContext: rootDir ?? tmpDir, resourcePath },
      source
    );
  }

  // Run "missing manifest" first — before any directives.json exists,
  // directiveCache is still null so the loader returns source unchanged.
  it("returns source unchanged when manifest is missing", () => {
    const result = callLoader(
      "var x = 1;",
      path.join(tmpDir, "output", "Page.Home", "index.js")
    );
    expect(result).toBe("var x = 1;");
  });

  // Now write a manifest for the remaining tests.
  it("prepends directive for matching module", () => {
    const outputDir = path.join(tmpDir, "output");
    fs.mkdirSync(outputDir, { recursive: true });
    fs.writeFileSync(
      path.join(outputDir, "directives.json"),
      JSON.stringify({ "Page.Home": "use client" })
    );

    const result = callLoader(
      "var x = 1;",
      path.join(tmpDir, "output", "Page.Home", "index.js")
    );
    expect(result).toBe('"use client";\nvar x = 1;');
  });

  it("returns source unchanged for module without directive", () => {
    const result = callLoader(
      "var x = 1;",
      path.join(tmpDir, "output", "Page.Other", "index.js")
    );
    expect(result).toBe("var x = 1;");
  });

  it("returns source unchanged for non-matching resourcePath", () => {
    const result = callLoader("var x = 1;", "/some/random/file.js");
    expect(result).toBe("var x = 1;");
  });
});
