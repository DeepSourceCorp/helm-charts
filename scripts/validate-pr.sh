#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

main() {
    local repo_root
    repo_root=$(git rev-parse --show-toplevel)

    local changed
    changed=$(ct list-changed --config "$repo_root/ct.yaml")

    if [[ -z "$changed" ]]; then
        exit 0
    fi

    local num_changed
    num_changed=$(wc -l <<< "$changed")

    if ((num_changed > 1)); then
        echo "This PR has changes to multiple charts. Please create individual PRs per chart." >&2
        exit 1
    fi
}

main


