#!/bin/bash
# deploy_all.sh

# Run backup
./backup.sh

# Commit and push to GitHub using a personal access token
git add .
git commit -m "Automated backup and deployment"
git push https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/$GITHUB_USERNAME/Yean-Cat.git

# Deploy to Heroku
./deploy.sh
