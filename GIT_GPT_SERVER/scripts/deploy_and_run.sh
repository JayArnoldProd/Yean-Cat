#!/bin/bash
# deploy_and_run.sh

set -e

# Function to kill processes using a specified port
kill_process_on_port() {
    PORT=$1
    echo "Checking for existing Flask server on port $PORT..."
    PID=$(lsof -t -i:$PORT)
    if [ ! -z "$PID" ]; then
        echo "Killing process $PID using port $PORT..."
        kill -9 $PID
    else
        echo "No process using port $PORT."
    fi
}

# Step 1: Set environment variables
echo "Sourcing environment variables..."
source .env

# Step 2: Update GitHub remote URL with token
echo "Updating GitHub remote URL..."
git remote set-url origin https://JayArnoldProd:${GITHUB_TOKEN}@github.com/JayArnoldProd/Yean-Cat.git

# Step 3: Run backup script
echo "Running backup script..."
./GIT_GPT_SERVER/scripts/backup.sh

# Step 4: Kill existing Flask processes on ports 5000 and 5001
kill_process_on_port 5000
kill_process_on_port 5001

# Step 5: Run deploy_all script
echo "Running deploy_all script..."
./GIT_GPT_SERVER/scripts/deploy_all.sh

# Step 6: Start Flask server on port 5001 and save PID
echo "Starting Flask server on port 5001..."
export FLASK_APP=GIT_GPT_SERVER/server.py
flask run --port=5001 &
FLASK_PID=$!
echo $FLASK_PID > flask_pid.txt

# Ensure flask_pid.txt is in .gitignore
if ! grep -q "flask_pid.txt" .gitignore; then
    echo "flask_pid.txt" >> .gitignore
    git add .gitignore
    git commit -m "Add flask_pid.txt to .gitignore"
fi

# Step 7: Run test API endpoints script
echo "Running test API endpoints script..."
if [ -f ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py ]; then
    chmod +x ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
    ./GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
else
    echo "Test script not found."
fi

# Step 8: Generate hierarchy
echo "Generating hierarchy..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Deployment and run completed successfully!"
