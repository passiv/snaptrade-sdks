#!/usr/bin/env bash

set -euo pipefail

validate_inputs() {
  if ! git -C "$mirror_directory" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Mirror directory is not a Git worktree: $mirror_directory" >&2
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

stage_mirror_tree() {
  git -C "$mirror_directory" add --all --force
  desired_tree=$(git -C "$mirror_directory" write-tree)
}

enforce_immutable_version_tag() {
  local tagged_tree

  if ! git -C "$mirror_directory" show-ref --verify --quiet "refs/tags/$tag"; then
    return
  fi

  tag_exists=true
  tagged_tree=$(git -C "$mirror_directory" rev-parse "$tag^{tree}")

  if [[ "$tagged_tree" != "$desired_tree" ]]; then
    tag_conflicts=true
    echo "::warning::Tag $tag already exists with different content; mirror update skipped."
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
  echo "Desired source tree: $desired_tree"
  echo "Version tag: $tag"
}

main() {
  if [[ "$#" -ne 4 ]]; then
    echo "Usage: $0 <mirror-directory> <target-branch> <version> <source-reference>" >&2
    exit 2
  fi

  mirror_directory=$1
  target_branch=$2
  version=$3
  source_reference=$4
  tag="v$version"
  desired_tree=
  tag_exists=false
  tag_conflicts=false
  changed=false
  tag_created=false

  validate_inputs
  git -C "$mirror_directory" config user.name "github-actions[bot]"
  git -C "$mirror_directory" config user.email "41898282+github-actions[bot]@users.noreply.github.com"
  stage_mirror_tree
  enforce_immutable_version_tag

  if [[ "$tag_conflicts" == true ]]; then
    write_results
    return
  fi

  commit_if_changed
  create_tag_if_missing
  push_updates
  write_results
}

main "$@"
