import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    include: [
      "output/Test.Main/index.js",
      "output-loader/Test.Loader/index.js",
    ],
    environment: "jsdom",
  },
});
