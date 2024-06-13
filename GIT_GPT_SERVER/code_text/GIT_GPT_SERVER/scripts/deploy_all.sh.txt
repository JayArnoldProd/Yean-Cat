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
echo "Checking for and killing existing Flask servers on ports 5000..."
./GIT_GPT_SERVER/scripts/stop_server.sh

# Step 5: Add and commit changes to GitHub (without push)
echo "Adding and committing changes to GitHub..."
git add .
git commit -m "Automated backup and deployment"
git push origin main

# Step 6: Check if the server is running and pull logs
if curl -s --head http://localhost:5000 | grep "200 OK" > /dev/null; then
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
else
    echo "Server is not running. Starting the Flask server..."
    cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER
    export FLASK_APP=server.py
    flask run &
    FLASK_PID=$!  # Capture the Flask server PID
    echo $FLASK_PID > /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/flask_pid.txt
    sleep 5  # Wait for the server to start
    echo "Pulling logs from the server..."
    curl -X POST http://localhost:5000/api/update_code/pull_logs -o Logs/server_logs.json
fi

echo "Backup and deployment completed successfully!"

# Step 7: Save Flask server PID (already done in Step 6)

# Step 8: Optionally run test API endpoints script
# echo "Running test API endpoints script..."
# if [ -f /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py ]; then
#     python /Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/scripts/tests/test_api_endpoints.py
# else
#     echo "Test script not found."
# fi

# Navigate to the project directory
cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat

# Push to Heroku
echo "Pushing to Heroku..."
git push heroku main

echo "Deployment and run completed successfully!"
