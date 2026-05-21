import { defineConfig } from "tsdown";
import { writeFileSync } from "node:fs";
import { resolve } from "node:path";

// CJS dts generation has a known bug in tsdown's dual-format pass.
// Workaround: build ESM with dts (which produces .d.mts), build CJS
// without dts, then write .d.cts / .d.ts re-export stubs by hand so
// consumers get types under every resolution mode.

const shared = {
  entry: ["./index.ts"],
  sourcemap: true,
  target: "node18",
  outDir: "dist",
  treeshake: true,
};

export default defineConfig([
  {
    ...shared,
    format: "esm",
    dts: true,
    clean: true,
    onSuccess: async () => {
      const stub = "export type * from './index.d.mts';\n";
      writeFileSync(resolve("dist/index.d.cts"), stub);
      writeFileSync(resolve("dist/index.d.ts"), stub);
    },
  },
  {
    ...shared,
    format: "cjs",
    dts: false,
    clean: false,
  },
]);
