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
  const entry = cache[moduleName];
  if (!entry)
    return nothing;
  const d = typeof entry === "string" ? entry : entry.directive;
  return d ? just(d) : nothing;
};
var lookupImportsImpl = (moduleName) => () => {
  if (!cache)
    return [];
  const entry = cache[moduleName];
  if (!entry || typeof entry === "string")
    return [];
  return entry.imports || [];
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

// output-loader/Data.Array/foreign.js
var replicateFill = function(count, value) {
  if (count < 1) {
    return [];
  }
  var result = new Array(count);
  return result.fill(value);
};
var replicatePolyfill = function(count, value) {
  var result = [];
  var n = 0;
  for (var i = 0;i < count; i++) {
    result[n++] = value;
  }
  return result;
};
var replicateImpl = typeof Array.prototype.fill === "function" ? replicateFill : replicatePolyfill;
var fromFoldableImpl = function() {
  function Cons(head, tail) {
    this.head = head;
    this.tail = tail;
  }
  var emptyList = {};
  function curryCons(head) {
    return function(tail) {
      return new Cons(head, tail);
    };
  }
  function listToArray(list) {
    var result = [];
    var count = 0;
    var xs = list;
    while (xs !== emptyList) {
      result[count++] = xs.head;
      xs = xs.tail;
    }
    return result;
  }
  return function(foldr, xs) {
    return listToArray(foldr(curryCons)(emptyList)(xs));
  };
}();
var length = function(xs) {
  return xs.length;
};
var sortByImpl = function() {
  function mergeFromTo(compare, fromOrdering, xs1, xs2, from, to) {
    var mid;
    var i;
    var j;
    var k;
    var x;
    var y;
    var c;
    mid = from + (to - from >> 1);
    if (mid - from > 1)
      mergeFromTo(compare, fromOrdering, xs2, xs1, from, mid);
    if (to - mid > 1)
      mergeFromTo(compare, fromOrdering, xs2, xs1, mid, to);
    i = from;
    j = mid;
    k = from;
    while (i < mid && j < to) {
      x = xs2[i];
      y = xs2[j];
      c = fromOrdering(compare(x)(y));
      if (c > 0) {
        xs1[k++] = y;
        ++j;
      } else {
        xs1[k++] = x;
        ++i;
      }
    }
    while (i < mid) {
      xs1[k++] = xs2[i++];
    }
    while (j < to) {
      xs1[k++] = xs2[j++];
    }
  }
  return function(compare, fromOrdering, xs) {
    var out;
    if (xs.length < 2)
      return xs;
    out = xs.slice(0);
    mergeFromTo(compare, fromOrdering, out, xs.slice(0), 0, xs.length);
    return out;
  };
}();

// output-loader/Data.Functor/foreign.js
var arrayMap = function(f) {
  return function(arr) {
    var l = arr.length;
    var result = new Array(l);
    for (var i = 0;i < l; i++) {
      result[i] = f(arr[i]);
    }
    return result;
  };
};
// output-loader/Data.Functor/index.js
var map = function(dict) {
  return dict.map;
};
var mapFlipped = function(dictFunctor) {
  var map1 = map(dictFunctor);
  return function(fa) {
    return function(f) {
      return map1(f)(fa);
    };
  };
};
var functorArray = {
  map: arrayMap
};
// output-loader/Control.Bind/foreign.js
var arrayBind = typeof Array.prototype.flatMap === "function" ? function(arr) {
  return function(f) {
    return arr.flatMap(f);
  };
} : function(arr) {
  return function(f) {
    var result = [];
    var l = arr.length;
    for (var i = 0;i < l; i++) {
      var xs = f(arr[i]);
      var k = xs.length;
      for (var j = 0;j < k; j++) {
        result.push(xs[j]);
      }
    }
    return result;
  };
};
// output-loader/Data.Bounded/foreign.js
var topChar = String.fromCharCode(65535);
var bottomChar = String.fromCharCode(0);
var topNumber = Number.POSITIVE_INFINITY;
var bottomNumber = Number.NEGATIVE_INFINITY;
// output-loader/Data.Show/foreign.js
var showIntImpl = function(n) {
  return n.toString();
};
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
var showInt = {
  show: showIntImpl
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
// output-loader/Data.Array.ST/foreign.js
var sortByImpl2 = function() {
  function mergeFromTo(compare2, fromOrdering, xs1, xs2, from, to) {
    var mid;
    var i;
    var j;
    var k;
    var x;
    var y;
    var c;
    mid = from + (to - from >> 1);
    if (mid - from > 1)
      mergeFromTo(compare2, fromOrdering, xs2, xs1, from, mid);
    if (to - mid > 1)
      mergeFromTo(compare2, fromOrdering, xs2, xs1, mid, to);
    i = from;
    j = mid;
    k = from;
    while (i < mid && j < to) {
      x = xs2[i];
      y = xs2[j];
      c = fromOrdering(compare2(x)(y));
      if (c > 0) {
        xs1[k++] = y;
        ++j;
      } else {
        xs1[k++] = x;
        ++i;
      }
    }
    while (i < mid) {
      xs1[k++] = xs2[i++];
    }
    while (j < to) {
      xs1[k++] = xs2[j++];
    }
  }
  return function(compare2, fromOrdering, xs) {
    if (xs.length < 2)
      return xs;
    mergeFromTo(compare2, fromOrdering, xs, xs.slice(0), 0, xs.length);
    return xs;
  };
}();
// output-loader/Data.Traversable/foreign.js
var traverseArrayImpl = function() {
  function array1(a) {
    return [a];
  }
  function array2(a) {
    return function(b) {
      return [a, b];
    };
  }
  function array3(a) {
    return function(b) {
      return function(c) {
        return [a, b, c];
      };
    };
  }
  function concat2(xs) {
    return function(ys) {
      return xs.concat(ys);
    };
  }
  return function(apply2) {
    return function(map2) {
      return function(pure2) {
        return function(f) {
          return function(array) {
            function go(bot, top2) {
              switch (top2 - bot) {
                case 0:
                  return pure2([]);
                case 1:
                  return map2(array1)(f(array[bot]));
                case 2:
                  return apply2(map2(array2)(f(array[bot])))(f(array[bot + 1]));
                case 3:
                  return apply2(apply2(map2(array3)(f(array[bot])))(f(array[bot + 1])))(f(array[bot + 2]));
                default:
                  var pivot = bot + Math.floor((top2 - bot) / 4) * 2;
                  return apply2(map2(concat2)(go(bot, pivot)))(go(pivot, top2));
              }
            }
            return go(0, array.length);
          };
        };
      };
    };
  };
}();
// output-loader/Data.String.Common/foreign.js
var joinWith = function(s) {
  return function(xs) {
    return xs.join(s);
  };
};

// output-loader/Data.String.Common/index.js
var $$null = function(s) {
  return s === "";
};

// output-loader/Effect.Console/foreign.js
var log = function(s) {
  return function() {
    console.log(s);
  };
};
// output-loader/Loader.Plugin/index.js
var show2 = /* @__PURE__ */ show(showString);
var mapFlipped2 = /* @__PURE__ */ mapFlipped(functorArray);
var show1 = /* @__PURE__ */ show(showInt);
var lookupImports = lookupImportsImpl;
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
        var imports = lookupImports(v.value0)();
        var directiveLine = function() {
          if (directive instanceof Just) {
            return show2(directive.value0) + `;
`;
          }
          if (directive instanceof Nothing) {
            return "";
          }
          throw new Error("Failed pattern match at Loader.Plugin (line 40, column 27 - line 42, column 26): " + [directive.constructor.name]);
        }();
        var importLines = mapFlipped2(imports)(function(path2) {
          return "import " + (show2(path2) + `;
`);
        });
        var prefix = directiveLine + joinWith("")(importLines);
        var $12 = $$null(prefix);
        if ($12) {
          return source;
        }
        log("[purescript-rsc] " + (v.value0 + (" -> injecting " + (show1(length(imports)) + (" import(s)" + function() {
          if (directive instanceof Just) {
            return " + " + show2(directive.value0);
          }
          if (directive instanceof Nothing) {
            return "";
          }
          throw new Error("Failed pattern match at Loader.Plugin (line 48, column 14 - line 50, column 29): " + [directive.constructor.name]);
        }())))))();
        return prefix + source;
      }
      throw new Error("Failed pattern match at Loader.Plugin (line 35, column 3 - line 51, column 32): " + [v.constructor.name]);
    };
  };
};
var plugin = /* @__PURE__ */ createPluginImpl(transform);

// loader-entry.js
var loader_entry_default = plugin;

module.exports=module.exports.default;
