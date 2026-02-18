import type { NextConfig } from "next";
import path from "path";

const nextConfig: NextConfig = {
  // Turbopack rules for PureScript output
  turbopack: {
    rules: {
      "output/**/index.js": {
        loaders: [path.resolve(__dirname, "purescript-rsc-loader.js")],
      },
    },
  },
  // Webpack fallback for production builds
  webpack(config) {
    config.module.rules.push({
      test: /output[/\\].*[/\\]index\.js$/,
      use: [path.resolve(__dirname, "purescript-rsc-loader.js")],
    });
    return config;
  },
};

export default nextConfig;
