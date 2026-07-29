#!/usr/bin/env bash

set -euo pipefail

if [[ "$#" -ne 5 ]]; then
  echo "Usage: $0 <source-directory> <remote-url> <target-branch> <version> <source-reference>" >&2
  exit 2
fi

source_directory=$1
remote_url=$2
target_branch=$3
version=$4
source_reference=$5
tag="v$version"

if [[ ! -d "$source_directory" ]]; then
  echo "Source directory does not exist: $source_directory" >&2
  exit 1
fi

if [[ -z "$target_branch" || -z "$version" || -z "$source_reference" ]]; then
  echo "Target branch, version, and source reference must not be empty." >&2
  exit 1
fi

if ! git check-ref-format "refs/tags/$tag"; then
  echo "Version produces an invalid Git tag: $tag" >&2
  exit 1
fi

temporary_root=${RUNNER_TEMP:-${TMPDIR:-/tmp}}
mirror_directory=$(mktemp -d "$temporary_root/sdk-mirror.XXXXXX")
trap 'rm -rf "$mirror_directory"' EXIT

git clone \
  --branch "$target_branch" \
  --single-branch \
  "$remote_url" \
  "$mirror_directory"

git -C "$mirror_directory" config user.name "github-actions[bot]"
git -C "$mirror_directory" config user.email "41898282+github-actions[bot]@users.noreply.github.com"

rsync \
  --archive \
  --delete \
  --exclude=.git \
  "$source_directory/" \
  "$mirror_directory/"

git -C "$mirror_directory" add --all --force
desired_tree=$(git -C "$mirror_directory" write-tree)

tag_exists=false
if git ls-remote --exit-code --tags "$remote_url" "refs/tags/$tag" >/dev/null 2>&1; then
  tag_exists=true
  git -C "$mirror_directory" fetch \
    --force \
    origin \
    "refs/tags/$tag:refs/tags/$tag"
  tagged_tree=$(git -C "$mirror_directory" rev-parse "$tag^{tree}")

  if [[ "$tagged_tree" != "$desired_tree" ]]; then
    echo "Tag $tag already exists with different content; bump the SDK version before mirroring." >&2
    exit 1
  fi
fi

changed=false
if ! git -C "$mirror_directory" diff --cached --quiet; then
  changed=true
  git -C "$mirror_directory" commit -m "Sync from $source_reference"
fi

tag_created=false
if [[ "$tag_exists" == false ]]; then
  tag_created=true
  git -C "$mirror_directory" tag "$tag"
fi

if [[ "$changed" == true && "$tag_created" == true ]]; then
  git -C "$mirror_directory" push \
    --atomic \
    origin \
    "HEAD:refs/heads/$target_branch" \
    "refs/tags/$tag"
elif [[ "$changed" == true ]]; then
  git -C "$mirror_directory" push origin "HEAD:refs/heads/$target_branch"
elif [[ "$tag_created" == true ]]; then
  git -C "$mirror_directory" push origin "refs/tags/$tag"
fi

mirror_sha=$(git -C "$mirror_directory" rev-parse HEAD)

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  echo "changed=$changed" >> "$GITHUB_OUTPUT"
  echo "mirror_sha=$mirror_sha" >> "$GITHUB_OUTPUT"
  echo "tag_created=$tag_created" >> "$GITHUB_OUTPUT"
fi

echo "Mirror commit: $mirror_sha"
echo "Mirror tree: $desired_tree"
echo "Version tag: $tag"
