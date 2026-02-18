const fs = require("fs");
const path = require("path");

// Cache: module name -> directive (rebuilt on every webpack invocation)
const directiveCache = new Map();

function scanPursSources(srcDir) {
  directiveCache.clear();
  const files = findPursFiles(srcDir);

  for (const file of files) {
    const src = fs.readFileSync(file, "utf-8");
    const modMatch = src.match(/^module\s+([\w.]+)/m);
    if (!modMatch) continue;
    const mod = modMatch[1];

    // Comment-based: -- @client / -- @server
    if (/^--\s*@client\b/m.test(src)) {
      directiveCache.set(mod, "use client");
      continue;
    }
    if (/^--\s*@server\b/m.test(src)) {
      directiveCache.set(mod, "use server");
      continue;
    }

    // Convention-based: *.Client -> "use client", *.Server / Actions.* -> "use server"
    if (/\.Client$/.test(mod)) {
      directiveCache.set(mod, "use client");
    } else if (/\.Server$/.test(mod) || /^Actions\./.test(mod)) {
      directiveCache.set(mod, "use server");
    }
  }

  console.log("[purescript-rsc] Scanned directives:", Object.fromEntries(directiveCache));
}

function findPursFiles(dir) {
  const results = [];
  if (!fs.existsSync(dir)) return results;
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      results.push(...findPursFiles(full));
    } else if (entry.name.endsWith(".purs")) {
      results.push(full);
    }
  }
  return results;
}

module.exports = function purscriptRscLoader(source) {
  // Scan .purs sources on first invocation
  scanPursSources(path.resolve(this.rootContext || process.cwd(), "src"));

  // Extract module name from path: output/Some.Module/index.js -> Some.Module
  const match = this.resourcePath.match(/output[/\\]([^/\\]+)[/\\]index\.js$/);
  if (!match) return source;

  const moduleName = match[1];
  const directive = directiveCache.get(moduleName);

  if (directive) {
    console.log(`[purescript-rsc] ${moduleName} -> "${directive}"`);
    return `"${directive}";\n${source}`;
  }

  return source;
};
