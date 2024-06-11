#!/bin/bash
# deploy_all.sh

echo "Starting deployment script..."

# Step 1: Run the backup script
./backup.sh

# Step 2: Add and commit changes to GitHub
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"

# Step 3: Push changes to GitHub
echo "Pushing changes to GitHub..."
git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git
git push origin main

# Step 4: Pull logs from the server
echo "Pulling logs from the server..."
curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json

echo "Backup and deployment completed successfully!"
