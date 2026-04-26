import fs from "fs";
import path from "path";
import { createUnplugin } from "unplugin";

let cache = null;
let mtime = 0;

export const loadDirectivesImpl = () => {
  const rootDir = process.cwd();
  const manifestPath = path.join(rootDir, "output", "directives.json");
  if (!fs.existsSync(manifestPath)) return;
  const stat = fs.statSync(manifestPath);
  if (stat.mtimeMs === mtime) return;
  mtime = stat.mtimeMs;
  cache = JSON.parse(fs.readFileSync(manifestPath, "utf-8"));
  console.log("[purescript-rsc] Loaded directives:", cache);
};

export const lookupDirectiveImpl = (nothing) => (just) => (moduleName) => () => {
  if (!cache) return nothing;
  const entry = cache[moduleName];
  if (!entry) return nothing;
  const d = typeof entry === "string" ? entry : entry.directive;
  return d ? just(d) : nothing;
};

export const lookupImportsImpl = (moduleName) => () => {
  if (!cache) return [];
  const entry = cache[moduleName];
  if (!entry || typeof entry === "string") return [];
  return entry.imports || [];
};

export const extractModuleImpl = (nothing) => (just) => (id) => {
  const match = id.match(/output[/\\]([^/\\]+)[/\\]index\.js$/);
  return match ? just(match[1]) : nothing;
};

export const createPluginImpl = (transformFn) => {
  const unplugin = createUnplugin(() => ({
    name: "purescript-rsc",
    transform: {
      filter: { id: /output[/\\].*[/\\]index\.js$/ },
      handler(code, id) {
        return transformFn(id)(code)();
      },
    },
  }));

  // Raw loader for turbopack/webpack loader API (this-based)
  function raw(source) {
    return transformFn(this.resourcePath)(source)();
  }
  raw.webpack = unplugin.webpack;
  raw.vite = unplugin.vite;
  raw.rollup = unplugin.rollup;
  raw.esbuild = unplugin.esbuild;

  return raw;
};
