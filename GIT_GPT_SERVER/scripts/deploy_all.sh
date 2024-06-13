#!/bin/bash
# deploy_all.sh

echo "Starting deployment script..."

# Step 1: Run the backup script
./GIT_GPT_SERVER/scripts/backup.sh

# Step 2: Add and commit changes to GitHub (without push)
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"

# Notify about manual Git operations
echo "Please manually push changes using GitHub Desktop."

# Step 3: Check if the server is running and pull logs
if curl -s --head http://localhost:5000 | grep "200 OK" > /dev/null; then
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
else
    echo "Server is not running. Starting the Flask server..."
    cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER
    export FLASK_APP=server.py
    flask run &
    sleep 5  # Wait for the server to start
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
fi

echo "Backup and deployment completed successfully!"
