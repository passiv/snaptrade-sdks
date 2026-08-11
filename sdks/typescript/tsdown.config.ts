import { defineConfig } from "tsdown";
import { copyFileSync } from "node:fs";
import { resolve } from "node:path";

// CJS dts generation has a known bug in tsdown's dual-format pass.
// Workaround: build ESM with dts (which produces .d.mts), build CJS
// without dts, then copy the generated declaration bundle to .d.cts / .d.ts so
// consumers get value exports under every resolution mode.

const shared = {
  sourcemap: false,
  outDir: "dist",
  treeshake: true,
};

const nodeShared = {
  ...shared,
  entry: ["./index.ts"],
  target: "node18" as const,
};

const browserShared = {
  ...shared,
  target: "es2020" as const,
  platform: "browser" as const,
  dts: false,
  minify: true,
  deps: {
    // The browser-only bundle must be self-contained because browsers cannot
    // resolve bare package specifiers without an import map. tsdown externalizes
    // package.json dependencies by default, so opt every runtime dependency back
    // into this browser artifact only.
    alwaysBundle: [/.*/],
    // Suppress tsdown's warning about the intentionally bundled dependency graph
    // instead of maintaining a fragile allow-list of direct and transitive
    // browser dependencies.
    onlyBundle: false as const,
  },
};

export default defineConfig([
  {
    ...nodeShared,
    format: "esm",
    dts: true,
    clean: true,
    onSuccess: async () => {
      copyFileSync(resolve("dist/index.d.mts"), resolve("dist/index.d.cts"));
      copyFileSync(resolve("dist/index.d.mts"), resolve("dist/index.d.ts"));
    },
  },
  {
    ...nodeShared,
    format: "cjs",
    dts: false,
    clean: false,
  },
  {
    ...browserShared,
    // Keep emitting dist/browser.umd.js for direct script-tag consumers, e.g.
    // docs pages that load the SDK from unpkg. This artifact is intentionally
    // not advertised in package.json's public resolver fields.
    entry: {
      browser: "./index.ts",
    },
    format: "umd",
    globalName: "client",
    clean: false,
  },
]);
