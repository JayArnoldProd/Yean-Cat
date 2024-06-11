#!/bin/bash

# Function to create a hierarchical representation of a directory
generate_hierarchy() {
    local directory=$1
    local output_file=$2

    echo "Generating hierarchy for $directory..."
    tree "$directory" -o "$output_file" || { echo "Failed to generate hierarchy for $directory"; exit 1; }
    echo "Hierarchy generated at $output_file"
}

# Generate hierarchies for the required directories
generate_hierarchy "GIT_GPT_SERVER" "GIT_GPT_SERVER/folder_backups/GIT_GPT_SERVER_hierarchy.txt"
generate_hierarchy "YEAN_CAT" "GIT_GPT_SERVER/folder_backups/YEAN_CAT_hierarchy.txt"
generate_hierarchy "YEAN_CAT_SERVER" "GIT_GPT_SERVER/folder_backups/YEAN_CAT_SERVER_hierarchy.txt"

echo "Hierarchy creation completed successfully!"
