#!/bin/bash

# Script for cloning repository from GitHub and pushing changes. 

while true; do
    echo "Enter 'stop' to exit."
    read "REPOSITORY_LINK?Enter link to git repository: "

    if [[ -z "$REPOSITORY_LINK" ]]; then
        echo "Error: The repository link cannot be empty."
        continue 
    elif [[ "$REPOSITORY_LINK" == "stop" ]]; then
        exit 0
    fi
    break
done

git remote add origin "$REPOSITORY_LINK"
git branch -m main

echo "Pushing code to GitHub..."
git push -u origin main

echo "Project successfully linked and uploaded to GitHub!"

exit 0