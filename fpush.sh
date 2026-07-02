#!/bin/zsh

# Use this script for commiting and pushing changes into GitHub.

while true; do
    echo "Enter 'stop' to exit."
    read "commit_message?Enter commit message: "
    if [[ -z "$commit_message" ]]; then
        echo "Commit message can't be empty!"
        continue
    
    elif [[ "$commit_message" == "stop" ]]; then
        exit 0
    fi
    
    git add .
    git commit -m "$commit_message"
    git push -u origin main
    break
done

exit 0