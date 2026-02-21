import { readFileSync } from "node:fs";

export const readFileImpl = (path) => readFileSync(path, "utf8");
