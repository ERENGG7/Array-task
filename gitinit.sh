#!/bin/zsh


if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "Git is initialized in this directory."
    exit 0
fi

echo "Initializing git repository ..."
    git init .
    git add .
    git commit -m "Initial commit"  
exit 0