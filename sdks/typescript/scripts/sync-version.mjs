import { readFileSync, writeFileSync } from "node:fs";
import { resolve, dirname } from "node:path";
import { fileURLToPath } from "node:url";
import { parse } from "yaml";

const here = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(here, "../../..");
const konfigYaml = parse(readFileSync(resolve(repoRoot, "konfig.yaml"), "utf8"));
const targetVersion = konfigYaml.generators?.typescript?.version;
if (!targetVersion) {
  console.error("Could not read generators.typescript.version from konfig.yaml");
  process.exit(1);
}
const pkgPath = resolve(here, "../package.json");
const pkg = JSON.parse(readFileSync(pkgPath, "utf8"));
if (pkg.version !== targetVersion) {
  pkg.version = targetVersion;
  writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + "\n");
  console.log(`Synced package.json version to ${targetVersion}`);
} else {
  console.log(`package.json version already in sync (${targetVersion})`);
}
