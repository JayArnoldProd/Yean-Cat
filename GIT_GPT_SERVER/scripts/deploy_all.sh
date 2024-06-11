#!/bin/bash
# deploy_all.sh

echo "Starting deployment script..."

# Step 1: Run the backup script
if [ -f ./GIT_GPT_SERVER/scripts/backup.sh ]; then
    ./GIT_GPT_SERVER/scripts/backup.sh
else
    echo "Backup script not found!"
    exit 1
fi

# Step 2: Add and commit changes to GitHub
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"

# Step 3: Push changes to GitHub
echo "Pushing changes to GitHub..."
if [ -z "$GITHUB_TOKEN" ]; then
    echo "GITHUB_TOKEN is not set. Please export your GitHub token."
    exit 1
fi

git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git
git push origin main

# Step 4: Start the Flask server
echo "Starting the Flask server..."
FLASK_SERVER_PID=""
if ! lsof -i:5000 ; then
    cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER
    export FLASK_APP=server.py
    flask run &
    FLASK_SERVER_PID=$!
    sleep 5  # Give the server some time to start
else
    echo "Flask server is already running."
fi

# Step 5: Pull logs from the server
if curl -s --head http://localhost:5000 | grep "200 OK" > /dev/null; then
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
else
    echo "Server is not running. Please start the server first."
    exit 1
fi

# Step 6: Stop the Flask server if it was started by this script
if [ ! -z "$FLASK_SERVER_PID" ]; then
    echo "Stopping the Flask server..."
    kill $FLASK_SERVER_PID
fi

echo "Backup and deployment completed successfully!"
