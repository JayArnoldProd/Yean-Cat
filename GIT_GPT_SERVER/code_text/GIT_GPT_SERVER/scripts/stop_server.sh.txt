#!/bin/bash
# stop_server.sh

# Function to kill a process using a specific port
kill_process_on_port() {
    local port=$1
    echo "Checking for existing server on port $port..."
    PID=$(lsof -t -i:$port)
    if [ ! -z "$PID" ]; then
        echo "Killing process $PID using port $port..."
        kill -9 $PID
    else
        echo "No process using port $port."
    fi
}

# Kill servers on specified ports
kill_process_on_port 5000
kill_process_on_port 5001

# Optionally, kill the Flask server using the PID saved in flask_pid.txt
FLASK_PID_FILE="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/flask_pid.txt"
if [ -f "$FLASK_PID_FILE" ]; then
    echo "Killing Flask server using PID from $FLASK_PID_FILE..."
    FLASK_PID=$(cat "$FLASK_PID_FILE")
    if [ ! -z "$FLASK_PID" ]; then
        kill -9 $FLASK_PID
        echo "Flask server with PID $FLASK_PID has been killed."
        rm "$FLASK_PID_FILE"
    else
        echo "No Flask server PID found in $FLASK_PID_FILE."
    fi
else
    echo "$FLASK_PID_FILE not found."
fi

echo "Server shutdown completed successfully!"
