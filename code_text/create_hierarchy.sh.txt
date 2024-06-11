#!/bin/bash

echo "Starting hierarchy creation script..."

# Function to create a hierarchical representation of a directory
generate_hierarchy() {
    local directory=$1
    local output_file=$2

    echo "Generating hierarchy for $directory..."
    find "$directory" -type d | while read -r dir; do
        echo "$dir/"
        find "$dir" -maxdepth 1 -type f | sed 's|^|    |'
    done > "$output_file"
    echo "Hierarchy generated at $output_file"
}

# Create hierarchy for code_text directory
generate_hierarchy "code_text" "folder_backups/code_text_hierarchy.txt"

# Create hierarchy for Logs directory
generate_hierarchy "Logs" "folder_backups/logs_hierarchy.txt"

# Create hierarchy for prompts directory
generate_hierarchy "prompts" "folder_backups/prompts_hierarchy.txt"

echo "Hierarchy creation completed successfully!"
