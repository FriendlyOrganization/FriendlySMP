#!/bin/bash

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

# Set repository path (optional, if running from outside repo)
rm -f /workspaces/FriendlySMP/.git/index.lock

REPO_PATH="/workspaces/FriendlySMP"
cd "$REPO_PATH" || exit

# Check if there are changes (including deletions, creations, and modifications)
git add -A  # Stages all changes including deletions

if git status --porcelain | grep . > /dev/null; then
    echo "Changes detected. Adding and committing..."
    
    # Commit with a timestamped message
    COMMIT_MESSAGE="Commit: $(date +'%Y-%m-%d %H:%M:%S')"
    git commit -m "$COMMIT_MESSAGE"
    
    # Push to the repository
    git push origin main  # Change 'main' to your branch if needed
    echo "Changes pushed successfully."
else
    echo "No changes to commit."
fi

git status