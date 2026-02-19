var __create = Object.create;
var __getProtoOf = Object.getPrototypeOf;
var __defProp = Object.defineProperty;
var __getOwnPropNames = Object.getOwnPropertyNames;
var __getOwnPropDesc = Object.getOwnPropertyDescriptor;
var __hasOwnProp = Object.prototype.hasOwnProperty;
var __toESM = (mod, isNodeMode, target) => {
  target = mod != null ? __create(__getProtoOf(mod)) : {};
  const to = isNodeMode || !mod || !mod.__esModule ? __defProp(target, "default", { value: mod, enumerable: true }) : target;
  for (let key of __getOwnPropNames(mod))
    if (!__hasOwnProp.call(to, key))
      __defProp(to, key, {
        get: () => mod[key],
        enumerable: true
      });
  return to;
};
var __moduleCache = /* @__PURE__ */ new WeakMap;
var __toCommonJS = (from) => {
  var entry = __moduleCache.get(from), desc;
  if (entry)
    return entry;
  entry = __defProp({}, "__esModule", { value: true });
  if (from && typeof from === "object" || typeof from === "function")
    __getOwnPropNames(from).map((key) => !__hasOwnProp.call(entry, key) && __defProp(entry, key, {
      get: () => from[key],
      enumerable: !(desc = __getOwnPropDesc(from, key)) || desc.enumerable
    }));
  __moduleCache.set(from, entry);
  return entry;
};
var __export = (target, all) => {
  for (var name in all)
    __defProp(target, name, {
      get: all[name],
      enumerable: true,
      configurable: true,
      set: (newValue) => all[name] = () => newValue
    });
};

// loader-entry.js
var exports_loader_entry = {};
__export(exports_loader_entry, {
  default: () => loader_entry_default
});
module.exports = __toCommonJS(exports_loader_entry);

// output-loader/Loader.Plugin/foreign.js
var import_fs = __toESM(require("fs"));
var import_path = __toESM(require("path"));
var import_unplugin = require("unplugin");
var cache = null;
var mtime = 0;
var loadDirectivesImpl = () => {
  const rootDir = process.cwd();
  const manifestPath = import_path.default.join(rootDir, "output", "directives.json");
  if (!import_fs.default.existsSync(manifestPath))
    return;
  const stat = import_fs.default.statSync(manifestPath);
  if (stat.mtimeMs === mtime)
    return;
  mtime = stat.mtimeMs;
  cache = JSON.parse(import_fs.default.readFileSync(manifestPath, "utf-8"));
  console.log("[purescript-rsc] Loaded directives:", cache);
};
var lookupDirectiveImpl = (nothing) => (just) => (moduleName) => () => {
  if (!cache)
    return nothing;
  const d = cache[moduleName];
  return d ? just(d) : nothing;
};
var extractModuleImpl = (nothing) => (just) => (id) => {
  const match = id.match(/output[/\\]([^/\\]+)[/\\]index\.js$/);
  return match ? just(match[1]) : nothing;
};
var createPluginImpl = (transformFn) => {
  const unplugin = import_unplugin.createUnplugin(() => ({
    name: "purescript-rsc",
    transform: {
      filter: { id: /output[/\\].*[/\\]index\.js$/ },
      handler(code, id) {
        return transformFn(id)(code)();
      }
    }
  }));
  function raw(source) {
    return transformFn(this.resourcePath)(source)();
  }
  raw.webpack = unplugin.webpack;
  raw.vite = unplugin.vite;
  raw.rollup = unplugin.rollup;
  raw.esbuild = unplugin.esbuild;
  return raw;
};
// output-loader/Data.Bounded/foreign.js
var topChar = String.fromCharCode(65535);
var bottomChar = String.fromCharCode(0);
var topNumber = Number.POSITIVE_INFINITY;
var bottomNumber = Number.NEGATIVE_INFINITY;
// output-loader/Data.Show/foreign.js
var showStringImpl = function(s) {
  var l = s.length;
  return '"' + s.replace(/[\0-\x1F\x7F"\\]/g, function(c, i) {
    switch (c) {
      case '"':
      case "\\":
        return "\\" + c;
      case "\x07":
        return "\\a";
      case "\b":
        return "\\b";
      case "\f":
        return "\\f";
      case `
`:
        return "\\n";
      case "\r":
        return "\\r";
      case "\t":
        return "\\t";
      case "\v":
        return "\\v";
    }
    var k = i + 1;
    var empty = k < l && s[k] >= "0" && s[k] <= "9" ? "\\&" : "";
    return "\\" + c.charCodeAt(0).toString(10) + empty;
  }) + '"';
};

// output-loader/Data.Show/index.js
var showString = {
  show: showStringImpl
};
var show = function(dict) {
  return dict.show;
};

// output-loader/Data.Maybe/index.js
var Nothing = /* @__PURE__ */ function() {
  function Nothing2() {}
  Nothing2.value = new Nothing2;
  return Nothing2;
}();
var Just = /* @__PURE__ */ function() {
  function Just2(value0) {
    this.value0 = value0;
  }
  Just2.create = function(value0) {
    return new Just2(value0);
  };
  return Just2;
}();

// output-loader/Effect.Console/foreign.js
var log = function(s) {
  return function() {
    console.log(s);
  };
};
// output-loader/Loader.Plugin/index.js
var show2 = /* @__PURE__ */ show(showString);
var lookupDirective = /* @__PURE__ */ function() {
  return lookupDirectiveImpl(Nothing.value)(Just.create);
}();
var extractModule = /* @__PURE__ */ function() {
  return extractModuleImpl(Nothing.value)(Just.create);
}();
var transform = function(id) {
  return function(source) {
    return function __do() {
      loadDirectivesImpl();
      var v = extractModule(id);
      if (v instanceof Nothing) {
        return source;
      }
      if (v instanceof Just) {
        var directive = lookupDirective(v.value0)();
        if (directive instanceof Nothing) {
          return source;
        }
        if (directive instanceof Just) {
          log("[purescript-rsc] " + (v.value0 + (" -> " + show2(directive.value0))))();
          return show2(directive.value0) + (`;
` + source);
        }
        throw new Error("Failed pattern match at Loader.Plugin (line 32, column 7 - line 36, column 43): " + [directive.constructor.name]);
      }
      throw new Error("Failed pattern match at Loader.Plugin (line 28, column 3 - line 36, column 43): " + [v.constructor.name]);
    };
  };
};
var plugin = /* @__PURE__ */ createPluginImpl(transform);

// loader-entry.js
var loader_entry_default = plugin;

module.exports=module.exports.default;
