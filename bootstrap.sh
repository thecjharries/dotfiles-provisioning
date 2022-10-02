#!/usr/bin/env bash

if ! command -v pip; then
    echo "Please install Python and Pip"
    exit 1
fi

pip install --user ansible
