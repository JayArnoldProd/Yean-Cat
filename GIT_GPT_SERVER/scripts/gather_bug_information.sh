#!/bin/bash

# Function to gather bug information
gather_bug_information() {
    bug_name=$1
    output_directory=$2

    # Path to the bug list JSON file
    bug_list_path="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/bug_list.json"

    # Read the bug list
    bug_list=$(cat "$bug_list_path")

    # Find the bug in the bug list
    bug=$(echo "$bug_list" | jq -c ".[] | select(.name == \"$bug_name\")")

    if [ -z "$bug" ]; then
        echo "Error: Bug '$bug_name' not found in $bug_list_path"
        return
    fi

    # Extract bug information
    bug_description=$(echo "$bug" | jq -r '.description')
    related_objects=$(echo "$bug" | jq -r '.related_objects[]')
    related_scripts=$(echo "$bug" | jq -r '.related_scripts[]')
    related_logs=$(echo "$bug" | jq -r '.related_logs[]')

    # Initialize the bug info text
    bug_info="Bug Name: $bug_name\nDescription: $bug_description\n\n"
    bug_info+="== Related Objects ==\n"

    object_dirs=(
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT/objects"
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT_SERVER/objects"
    )

    for obj in $related_objects; do
        bug_info+="\nObject: $obj\n"
        for object_dir in "${object_dirs[@]}"; do
            obj_path="$object_dir/$obj"
            if [ -d "$obj_path" ]; then
                for filename in "$obj_path"/*.{gml,yy}; do
                    if [ -f "$filename" ]; then
                        code=$(cat "$filename")
                        bug_info+="\nFile: $(basename "$filename")\nCode:\n$code\n"
                    fi
                done
                break
            fi
        done
    done

    bug_info+="\n== Related Scripts ==\n"

    script_dirs=(
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT/scripts"
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT_SERVER/scripts"
    )

    for script in $related_scripts; do
        for script_dir in "${script_dirs[@]}"; do
            script_path="$script_dir/$script.gml"
            if [ -f "$script_path" ]; then
                code=$(cat "$script_path")
                bug_info+="\nScript: $script\nCode:\n$code\n"
                break
            fi
        done
    done

    bug_info+="\n== Related Logs ==\n"

    log_dirs=(
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/Client"
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/Server"
        "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/GIT_GPT"
    )

    for log in $related_logs; do
        for log_dir in "${log_dirs[@]}"; do
            log_path="$log_dir/$log.txt"
            if [ -f "$log_path" ]; then
                log_content=$(cat "$log_path")
                bug_info+="\nLog: $log\nContent:\n$log_content\n"
                break
            fi
        done
    done

    output_path="$output_directory/bug_${bug_name}_information.txt"
    echo -e "$bug_info" > "$output_path"

    echo "Bug information saved to $output_path"
}

# Example usage
if [ $# -ne 1 ]; then
    echo "Usage: ./gather_bug_information.sh <bug_name>"
else
    bug_name=$1
    output_directory="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/Bug_Info"
    gather_bug_information "$bug_name" "$output_directory"
fi
