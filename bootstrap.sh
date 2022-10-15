#!/usr/bin/env bash

# if [[ -f /etc/os-release ]]; then
#     os=$(sed -n 's/ID_LIKE=\(.*\)/\1/p' /etc/os-release)
#     if [[ -f "bootstrap.${os}.sh" ]]; then
#         bash "bootstrap.${os}.sh"
#     fi
# fi

# if [[ -f bootstrap.secret.sh ]]; then
#     bash bootstrap.secret.sh
# fi

if ! command -v pip; then
    echo "Please install Python and Pip"
    exit 1
fi

# Install necessary packages
pip install --user \
    ansible \
    ansible-lint

# Update PATH with new install
export PATH="$HOME/.local/bin:$PATH"

# Add necessary collections
ansible-galaxy collection install \
    community.general
