const fs = require("fs");
const path = require("path");

let directiveCache = null;
let manifestMtime = 0;

function loadDirectives(rootDir) {
  const manifestPath = path.join(rootDir, "output", "directives.json");
  if (!fs.existsSync(manifestPath)) return;

  const stat = fs.statSync(manifestPath);
  if (stat.mtimeMs === manifestMtime) return;

  manifestMtime = stat.mtimeMs;
  directiveCache = JSON.parse(fs.readFileSync(manifestPath, "utf-8"));
  console.log("[purescript-rsc] Loaded directives:", directiveCache);
}

module.exports = function purscriptRscLoader(source) {
  const rootDir = this.rootContext || process.cwd();
  loadDirectives(rootDir);
  if (!directiveCache) return source;

  // Extract module name from path: output/Some.Module/index.js -> Some.Module
  const match = this.resourcePath.match(/output[/\\]([^/\\]+)[/\\]index\.js$/);
  if (!match) return source;

  const moduleName = match[1];
  const directive = directiveCache[moduleName];

  if (directive) {
    console.log(`[purescript-rsc] ${moduleName} -> "${directive}"`);
    return `"${directive}";\n${source}`;
  }

  return source;
};
