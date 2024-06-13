#!/bin/bash
# deploy_all.sh

# Step 1: Set environment variables from .env
source .env

# Step 2: Update GitHub remote URL with token
echo "Updating GitHub remote URL..."
git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git

# Step 3: Run backup script with hierarchy generation
echo "Running backup script..."
./GIT_GPT_SERVER/scripts/backup.sh

# Step 4: Identify and kill specific Flask processes
echo "Checking for and killing existing Flask servers on ports 5000 and 5001..."
./GIT_GPT_SERVER/scripts/stop_server.sh

# Step 5: Add and commit changes to GitHub (without push)
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"

# Notify about manual Git operations
echo "Please manually push changes using GitHub Desktop."

# Step 6: Check if the server is running and pull logs
if curl -s --head http://localhost:5000 | grep "200 OK" > /dev/null; then
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
else
    echo "Server is not running. Starting the Flask server..."
    cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER
    export FLASK_APP=GIT_GPT_SERVER.server
    flask run &
    sleep 5  # Wait for the server to start
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
fi

echo "Backup and deployment completed successfully!"

# Step 7: Start Flask server on port 5001 and save PID
echo "Starting Flask server on port 5001..."
export FLASK_APP=GIT_GPT_SERVER.server
flask run --port=5001 &
FLASK_PID=$!

# Save the Flask PID to kill it later if needed
echo $FLASK_PID > flask_pid.txt

# Step 8: Run test API endpoints script
echo "Running test API endpoints script..."
if [ -f /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py ]; then
    chmod +x /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
    /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
else
    echo "Test script not found."
fi

echo "Deployment and run completed successfully!"
