#!/usr/bin/env bash
if [ ! -f $(brew &> /dev/null) ]; then
    echo "Homebrew not found; installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else 
    echo "Homebrew is already installed!"
    exit 0
fi

