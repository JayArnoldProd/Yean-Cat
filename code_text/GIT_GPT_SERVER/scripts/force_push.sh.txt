#!/bin/bash

# Get the commit message from the argument, default to a preset value if not provided
COMMIT_MESSAGE=${1:-"Catch up with local changes"}

# Navigate to the project directory
cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat

# Set the GitHub remote URL with token
echo "Setting GitHub remote URL..."
git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git

# Add all changes
echo "Adding changes..."
git add .

# Commit with the provided message
echo "Committing changes..."
git commit -m "$COMMIT_MESSAGE"

# Force push to main
echo "Pushing to GitHub with force..."
git push origin main --force

echo "Force push completed successfully!"
