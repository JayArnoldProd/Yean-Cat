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
if [ -f "flask_pid.txt" ]; then
    echo "Killing Flask server using PID from flask_pid.txt..."
    FLASK_PID=$(cat flask_pid.txt)
    if [ ! -z "$FLASK_PID" ]; then
        kill -9 $FLASK_PID
        echo "Flask server with PID $FLASK_PID has been killed."
    else
        echo "No Flask server PID found in flask_pid.txt."
    fi
else
    echo "flask_pid.txt not found."
fi

echo "Server shutdown completed successfully!"
