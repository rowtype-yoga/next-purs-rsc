import { loader } from "./output-loader/Loader.Webpack/index.js";

export default function purscriptRscLoader(source) {
  return loader(this.rootContext || process.cwd())(this.resourcePath)(source)();
}
