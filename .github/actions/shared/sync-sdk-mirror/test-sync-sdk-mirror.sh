#!/usr/bin/env bash

set -euo pipefail

script_directory=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
temporary_root=$(mktemp -d "${TMPDIR:-/tmp}/sync-sdk-mirror-test.XXXXXX")
trap 'rm -rf "$temporary_root"' EXIT

remote_repository="$temporary_root/remote.git"
seed_repository="$temporary_root/seed"
source_directory="$temporary_root/source"
checkout_directory="$temporary_root/checkout"
output_file="$temporary_root/github-output"
log_file="$temporary_root/sync-log"

fail() {
  echo "FAIL: $*" >&2
  exit 1
}

assert_equal() {
  local expected=$1
  local actual=$2
  local message=$3

  if [[ "$expected" != "$actual" ]]; then
    fail "$message (expected '$expected', got '$actual')"
  fi
}

remote_head() {
  git --git-dir="$remote_repository" rev-parse refs/heads/master
}

remote_tag_tree() {
  local tag=$1
  git --git-dir="$remote_repository" rev-parse "$tag^{tree}"
}

run_sync() {
  local version=$1
  local mirror_directory

  mirror_directory=$(mktemp -d "$temporary_root/mirror.XXXXXX")
  git clone --branch master "$remote_repository" "$mirror_directory" >/dev/null

  rsync \
    --archive \
    --delete \
    --exclude=.git \
    "$source_directory/" \
    "$mirror_directory/"

  : > "$output_file"
  : > "$log_file"
  GITHUB_OUTPUT="$output_file" \
    bash "$script_directory/sync-sdk-mirror.sh" \
      "$mirror_directory" \
      master \
      "$version" \
      "passiv/snaptrade-sdks@test" 2>&1 |
    tee "$log_file"
}

git init --bare "$remote_repository" >/dev/null
git --git-dir="$remote_repository" symbolic-ref HEAD refs/heads/master

git init "$seed_repository" >/dev/null
git -C "$seed_repository" config user.name "Test"
git -C "$seed_repository" config user.email "test@example.com"
echo "stale" > "$seed_repository/stale.txt"
git -C "$seed_repository" add stale.txt
git -C "$seed_repository" commit -m "Seed mirror" >/dev/null
git -C "$seed_repository" branch -M master
git -C "$seed_repository" remote add origin "$remote_repository"
git -C "$seed_repository" push -u origin master >/dev/null

mkdir -p "$source_directory/nested"
echo "current" > "$source_directory/nested/current.txt"
echo "hidden" > "$source_directory/.hidden"
echo "ignored.txt" > "$source_directory/.gitignore"
echo "committed source content" > "$source_directory/ignored.txt"
echo "#!/usr/bin/env bash" > "$source_directory/executable.sh"
chmod +x "$source_directory/executable.sh"

run_sync 1.2.3
first_head=$(remote_head)
assert_equal "$first_head" "$(git --git-dir="$remote_repository" rev-parse refs/tags/v1.2.3)" "Initial tag must point to the mirrored commit"

git clone "$remote_repository" "$checkout_directory" >/dev/null
diff --recursive --exclude=.git "$source_directory" "$checkout_directory" >/dev/null ||
  fail "Initial mirror content must match the source directory"
[[ -x "$checkout_directory/executable.sh" ]] ||
  fail "Executable file mode must be preserved"
[[ ! -e "$checkout_directory/stale.txt" ]] ||
  fail "Files absent from the source must be deleted"

run_sync 1.2.3
assert_equal "$first_head" "$(remote_head)" "Matching rerun must not create a commit"
grep -qx "changed=false" "$output_file" ||
  fail "Matching rerun must report changed=false"
grep -qx "tag_created=false" "$output_file" ||
  fail "Matching rerun must report tag_created=false"

run_sync 1.2.4
assert_equal "$first_head" "$(remote_head)" "Adding a tag must not create a commit"
assert_equal "$(remote_tag_tree v1.2.3)" "$(remote_tag_tree v1.2.4)" "New tag must use the current source tree"

rm "$source_directory/nested/current.txt"
echo "updated" > "$source_directory/updated.txt"
run_sync 1.2.5
second_head=$(remote_head)
[[ "$second_head" != "$first_head" ]] ||
  fail "Changed source content must create a mirror commit"

git --git-dir="$remote_repository" tag v9.9.9 refs/heads/master
conflicting_tag=$(git --git-dir="$remote_repository" rev-parse refs/tags/v9.9.9)
echo "conflicting" > "$source_directory/conflicting.txt"
head_before_conflict=$(remote_head)
run_sync 9.9.9
assert_equal "$head_before_conflict" "$(remote_head)" "Tag conflict must not mutate the mirror branch"
assert_equal "$conflicting_tag" "$(git --git-dir="$remote_repository" rev-parse refs/tags/v9.9.9)" "Tag conflict must not mutate the existing tag"
grep -Fqx "::warning::Tag v9.9.9 already exists with different content; mirror update skipped." "$log_file" ||
  fail "Tag conflict must emit a warning"
grep -qx "changed=false" "$output_file" ||
  fail "Tag conflict must report changed=false"
grep -qx "tag_created=false" "$output_file" ||
  fail "Tag conflict must report tag_created=false"
grep -qx "mirror_sha=$head_before_conflict" "$output_file" ||
  fail "Tag conflict must report the unchanged mirror commit"

cat > "$remote_repository/hooks/pre-receive" <<'HOOK'
#!/usr/bin/env bash
exit 1
HOOK
chmod +x "$remote_repository/hooks/pre-receive"
head_before_rejection=$(remote_head)
if run_sync 10.0.0; then
  fail "A rejected atomic push must fail"
fi
assert_equal "$head_before_rejection" "$(remote_head)" "Rejected push must not mutate the mirror branch"
if git --git-dir="$remote_repository" rev-parse --verify refs/tags/v10.0.0 >/dev/null 2>&1; then
  fail "Rejected atomic push must not create its tag"
fi

echo "All sync-sdk-mirror tests passed."
