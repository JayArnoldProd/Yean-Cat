#!/bin/bash

# Function to create a hierarchical representation of a directory
generate_hierarchy() {
    local directory=$1
    local output_file=$2

    echo "Generating hierarchy for $directory..."
    tree "$directory" -o "$output_file" || { echo "Failed to generate hierarchy for $directory"; exit 1; }
    echo "Hierarchy generated at $output_file"
}

# Export functions to be used in other scripts
export -f generate_hierarchy

# Generate hierarchies for the required directories
generate_hierarchy "." "folder_backups/root_hierarchy.txt"
generate_hierarchy "YEAN CAT" "folder_backups/yean_cat_hierarchy.txt"
generate_hierarchy "YEAN CAT SERVER" "folder_backups/yean_cat_server_hierarchy.txt"

echo "Hierarchy creation completed successfully!"
