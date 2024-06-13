#!/bin/bash

# Create a hierarchies directory in the root
mkdir -p hierarchies

# Function to create a hierarchical representation of a directory
generate_hierarchy() {
    local directory=$1
    local output_file=$2
    local depth=$3

    echo "Generating hierarchy for $directory..."
    if [ -z "$depth" ]; then
        tree "$directory" -o "$output_file" || { echo "Failed to generate hierarchy for $directory"; exit 1; }
    else
        tree -L "$depth" "$directory" -o "$output_file" || { echo "Failed to generate hierarchy for $directory"; exit 1; }
    fi
    echo "Hierarchy generated at $output_file"
}

# Generate hierarchies for the required directories and save in the hierarchies folder
generate_hierarchy "GIT_GPT_SERVER" "hierarchies/GIT_GPT_SERVER_hierarchy.txt"
generate_hierarchy "YEAN_CAT" "hierarchies/YEAN_CAT_hierarchy.txt" 5
generate_hierarchy "YEAN_CAT_SERVER" "hierarchies/YEAN_CAT_SERVER_hierarchy.txt"

# Generate top-level hierarchy for Yean-Cat without including files within subdirectories
generate_hierarchy "." "hierarchies/Yean-Cat_hierarchy.txt" 1

echo "Hierarchy creation completed successfully!"
