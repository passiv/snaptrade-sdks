#!/usr/bin/env bash

set -euo pipefail

validate_inputs() {
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
}

prepare_mirror_checkout() {
  local temporary_root=${RUNNER_TEMP:-${TMPDIR:-/tmp}}
  mirror_directory=$(mktemp -d "$temporary_root/sdk-mirror.XXXXXX")
  trap 'rm -rf "$mirror_directory"' EXIT

  git clone \
    --branch "$target_branch" \
    --single-branch \
    "$remote_url" \
    "$mirror_directory"

  git -C "$mirror_directory" config user.name "github-actions[bot]"
  git -C "$mirror_directory" config user.email "41898282+github-actions[bot]@users.noreply.github.com"
}

stage_authoritative_tree() {
  rsync \
    --archive \
    --delete \
    --exclude=.git \
    "$source_directory/" \
    "$mirror_directory/"

  git -C "$mirror_directory" add --all --force
  desired_tree=$(git -C "$mirror_directory" write-tree)
}

enforce_immutable_version_tag() {
  local tagged_tree

  if ! git ls-remote --exit-code --tags "$remote_url" "refs/tags/$tag" >/dev/null 2>&1; then
    return
  fi

  tag_exists=true
  git -C "$mirror_directory" fetch \
    --force \
    origin \
    "refs/tags/$tag:refs/tags/$tag"
  tagged_tree=$(git -C "$mirror_directory" rev-parse "$tag^{tree}")

  # Reject conflicting version content before any remote mutation.
  if [[ "$tagged_tree" != "$desired_tree" ]]; then
    echo "Tag $tag already exists with different content; bump the SDK version before mirroring." >&2
    exit 1
  fi
}

commit_if_changed() {
  if git -C "$mirror_directory" diff --cached --quiet; then
    return
  fi

  changed=true
  git -C "$mirror_directory" commit -m "Sync from $source_reference"
}

create_tag_if_missing() {
  if [[ "$tag_exists" == true ]]; then
    return
  fi

  tag_created=true
  git -C "$mirror_directory" tag "$tag"
}

push_updates() {
  # An unchanged branch with an existing tag requires no remote mutation.
  if [[ "$changed" == true && "$tag_created" == true ]]; then
    # Keep a new mirror commit and its version tag indivisible.
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
}

write_results() {
  local mirror_sha
  mirror_sha=$(git -C "$mirror_directory" rev-parse HEAD)

  if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
    echo "changed=$changed" >> "$GITHUB_OUTPUT"
    echo "mirror_sha=$mirror_sha" >> "$GITHUB_OUTPUT"
    echo "tag_created=$tag_created" >> "$GITHUB_OUTPUT"
  fi

  echo "Mirror commit: $mirror_sha"
  echo "Mirror tree: $desired_tree"
  echo "Version tag: $tag"
}

main() {
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
  mirror_directory=
  desired_tree=
  tag_exists=false
  changed=false
  tag_created=false

  validate_inputs
  prepare_mirror_checkout
  stage_authoritative_tree
  enforce_immutable_version_tag
  commit_if_changed
  create_tag_if_missing
  push_updates
  write_results
}

main "$@"
