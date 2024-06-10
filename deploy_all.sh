#!/bin/bash
# deploy_all.sh

# Run backup
./backup.sh

# Commit and push to GitHub
git add .
git commit -m "Automated backup and deployment"
git push origin main

# Deploy to Heroku
./deploy.sh
