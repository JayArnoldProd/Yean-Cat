#!/bin/bash
# deploy_all.sh

echo "Starting deployment script..."

# Step 1: Run the backup script
./backup.sh

# Step 2: Add and commit changes to GitHub (without push)
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"

# Step 3: Deploy to Heroku
echo "Deploying to Heroku..."
heroku git:remote -a yean-cat-git-gpt
git push heroku main

echo "Backup and deployment completed successfully!"
