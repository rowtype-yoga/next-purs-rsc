import type { NextConfig } from "next";
import path from "path";

const nextConfig: NextConfig = {
  webpack(config) {
    // Add loader for PureScript output files
    config.module.rules.push({
      test: /output[/\\].*[/\\]index\.js$/,
      use: [path.resolve(__dirname, "purescript-rsc-loader.js")],
    });

    return config;
  },
};

export default nextConfig;
