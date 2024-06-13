#!/bin/bash

# Function to generate a list of scripts
generate_script_list() {
    local dir=$1
    local output_file=$2

    echo "Generating script list for $dir..."
    find "$dir" -name "*.gml" -exec basename {} .gml \; > "$output_file"
    echo "Script list generated at $output_file"
}

# Function to generate a list of commands
generate_command_list() {
    local dir=$1
    local output_file=$2

    echo "Generating command list for $dir..."
    grep -r "function scr_" "$dir" | awk -F'function scr_' '{print $2}' | awk -F'(' '{print $1}' | sort -u > "$output_file"
    echo "Command list generated at $output_file"
}

# Generate lists for client project
generate_script_list "YEAN_CAT/scripts" "script_list.txt"
generate_command_list "YEAN_CAT/scripts" "command_list.txt"

# Generate lists for server project
generate_script_list "YEAN_CAT_SERVER/scripts" "server_script_list.txt"
generate_command_list "YEAN_CAT_SERVER/scripts" "server_command_list.txt"

# Commit and push the updated lists
git add script_list.txt command_list.txt server_script_list.txt server_command_list.txt
git commit -m "Update script and command lists"

echo "Update completed successfully!"
