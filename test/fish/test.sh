#!/usr/bin/env bash

set -e

source /etc/os-release

LATEST_FISH_VERSION="$(git ls-remote --tags https://github.com/fish-shell/fish-shell | grep -oP "[0-9]+\\.[0-9]+\\.[0-9]+" | sort -V | tail -n 1)"

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
case "${ID}" in
  debian|ubuntu)
    check "fish" fish -v | grep "$LATEST_FISH_VERSION"
  ;;
  alpine)
    check "fish" fish -v
  ;;
  fedora|rhel)
    check "fish" fish -v
  ;;
esac
check "fisher" fish -c "fisher -v"

# Report result
reportResults
