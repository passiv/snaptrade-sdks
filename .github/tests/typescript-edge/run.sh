#!/usr/bin/env bash
set -euo pipefail

test_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(cd -- "$test_dir/../../.." && pwd)
bundle_path="$test_dir/worker.bundle.js"
log_path="$test_dir/workerd.log"
workerd_pid=""

cleanup() {
  if [ -n "$workerd_pid" ] && kill -0 "$workerd_pid" 2>/dev/null; then
    kill "$workerd_pid"
    wait "$workerd_pid" 2>/dev/null || true
  fi
  rm -f "$bundle_path" "$log_path"
}
trap cleanup EXIT

npx --yes --registry=https://registry.npmjs.org pnpm@8.15.9 \
  --dir "$repo_root/sdks/typescript" install --frozen-lockfile
npm --prefix "$repo_root/sdks/typescript" run build

npx --yes --registry=https://registry.npmjs.org esbuild@0.25.9 \
  "$test_dir/worker.js" \
  --bundle \
  --format=esm \
  --platform=browser \
  --outfile="$bundle_path"

npx --yes --registry=https://registry.npmjs.org workerd@1.20260811.1 \
  serve "$test_dir/workerd.capnp" >"$log_path" 2>&1 &
workerd_pid=$!

for _ in {1..40}; do
  if response=$(curl --fail --silent http://127.0.0.1:8788); then
    if [ "$response" != "ok" ]; then
      echo "Unexpected workerd response: $response" >&2
      exit 1
    fi
    echo "Cloudflare workerd compatibility test passed"
    exit 0
  fi
  if ! kill -0 "$workerd_pid" 2>/dev/null; then
    break
  fi
  sleep 0.25
done

cat "$log_path" >&2
exit 1
