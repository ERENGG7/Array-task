#!/bin/zsh

while true; do
    read "commit_message?enter commit message: "

    if [[ -z "$commit_message" ]];then
        echo "Commit message can't be empty."
        continue
    fi
    git add .
    git commit -m "$commit_message"
    break

done

 