#!/bin/zsh

# Use this script only for commiting into local git repository
while true; do
    read "commit_message?enter commit message: "

    if [[ -z "$commit_message" ]];then
        echo "Commit message can't be empty."
        continue
    fi

    elif [[ "$commit_message" == "stop" ]]; then
        exit 0
    fi

    git add .
    git commit -m "$commit_message"
    break

done

 