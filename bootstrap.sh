#!/usr/bin/env bash

if ! command -v pip; then
    echo "Please install Python and Pip"
    exit 1
fi

# Install necessary packages
pip install --user \
    ansible \
    ansible-lint
