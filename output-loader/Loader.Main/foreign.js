import fs from "fs";
import path from "path";

// File system FFI for Loader.Main

export const readFileSync = (p) => () => fs.readFileSync(p, "utf-8");
export const writeFileSync = (p) => (content) => () =>
  fs.writeFileSync(p, content);
export const existsSync = (p) => () => fs.existsSync(p);
export const mkdirSync = (p) => () =>
  fs.mkdirSync(p, { recursive: true });
export const readdirSync = (p) => () =>
  fs.readdirSync(p, { withFileTypes: true }).map((e) => ({
    name: e.name,
    isDirectory: e.isDirectory(),
  }));
export const unlinkSync = (p) => () => fs.unlinkSync(p);
export const rmSync = (p) => () => fs.rmSync(p, { recursive: true, force: true });
export const relativePath = (from) => (to) => path.relative(from, to).replace(/\\/g, "/");
export const joinPath = (a) => (b) => path.join(a, b);
export const resolvePath = (a) => (b) => path.resolve(a, b);
