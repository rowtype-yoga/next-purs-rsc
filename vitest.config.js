import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {
    include: ["output/Test.Action/index.js"],
    environment: "jsdom",
  },
});
