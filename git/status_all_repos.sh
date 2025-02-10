#!/bin/bash

# Function to update Git repositories
update_git() {
    # Save the current path
    local current_dir="$PWD"

    # Find all directories containing a .git folder
    for repo in $(find . -type d -name ".git" | sed 's|/.git||'); do
        echo "Checking repository in: $repo"
        cd "$repo" # Change to the repository directory
        git status
        cd "$current_dir" # Return to the initial directory
    done
}

# Call the function to start updating
update_git

