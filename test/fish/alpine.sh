#!/usr/bin/env bash

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

check "fish" fish -v
check "fisher" fish -c "fisher -v"

# Report result
reportResults
