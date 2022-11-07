#!/usr/bin/env bash

set -e

NON_ROOT_USER=""
POSSIBLE_USERS=("vscode" "node" "codespace" "$(awk -v val=1000 -F ":" '$3==val{print $1}' /etc/passwd)")
for CURRENT_USER in "${POSSIBLE_USERS[@]}"; do
  if id -u ${CURRENT_USER} >/dev/null 2>&1; then
    NON_ROOT_USER=${CURRENT_USER}
    break
  fi
done
if [ "${NON_ROOT_USER}" = "" ]; then
  NON_ROOT_USER=root
fi

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

check "fish" fish -v
echo "Testing with user: ${NON_ROOT_USER}"
check "fisher" su "${NON_ROOT_USER}" -c 'fish -c "fisher -v"'
check "fishtape is available" su "${NON_ROOT_USER}" -c 'fish -c "type -q fishtape"'

# Report result
reportResults
