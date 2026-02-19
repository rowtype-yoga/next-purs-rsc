import fs from "fs";
import path from "path";

let cache = null;
let mtime = 0;

export const loadDirectivesImpl = (rootDir) => () => {
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
  const d = cache[moduleName];
  return d ? just(d) : nothing;
};

export const extractModuleImpl = (nothing) => (just) => (resourcePath) => {
  const match = resourcePath.match(/output[/\\]([^/\\]+)[/\\]index\.js$/);
  return match ? just(match[1]) : nothing;
};
