import { existsSync, readFileSync, writeFileSync } from "node:fs";
import { dirname, resolve } from "node:path";
import { fileURLToPath } from "node:url";
import { parse } from "yaml";

const here = dirname(fileURLToPath(import.meta.url));

function findKonfigYaml(start) {
  let dir = start;
  while (true) {
    const candidate = resolve(dir, "konfig.yaml");
    if (existsSync(candidate)) return candidate;
    const parent = dirname(dir);
    if (parent === dir) return null;
    dir = parent;
  }
}

const konfigYamlPath = findKonfigYaml(here);
if (!konfigYamlPath) {
  console.error("Could not locate konfig.yaml above " + here);
  process.exit(1);
}

const konfigYaml = parse(readFileSync(konfigYamlPath, "utf8"));
const targetVersion = konfigYaml.generators?.typescript?.version;
if (!targetVersion) {
  console.error(
    "Could not read generators.typescript.version from " + konfigYamlPath,
  );
  process.exit(1);
}

const pkgPath = resolve(here, "../package.json");
const pkg = JSON.parse(readFileSync(pkgPath, "utf8"));
if (pkg.version !== targetVersion) {
  pkg.version = targetVersion;
  writeFileSync(pkgPath, JSON.stringify(pkg, null, 2) + "\n");
  console.log("Synced package.json version to " + targetVersion);
} else {
  console.log("package.json version already in sync (" + targetVersion + ")");
}
