#!/bin/bash

# Define source and destination directories
SOURCE_DIR="/Users/joshuaarnold/Library/Application Support/com.yoyogames.macyoyorunner"
DEST_DIR="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/Client"

# Copy all SessionLog_....txt files
for file in "$SOURCE_DIR"/SessionLog_*.txt; do
    cp "$file" "$DEST_DIR/"
done

# Copy the MasterLog File.txt
if [ -f "$SOURCE_DIR/MasterLog File.txt" ]; then
    cp "$SOURCE_DIR/MasterLog File.txt" "$DEST_DIR/"
fi

echo "All log files have been copied to $DEST_DIR."
