#!/bin/bash

# Create the code_text directory in the root
mkdir -p code_text/GIT_GPT_SERVER

# Function to copy and rename files with .txt extension
copy_and_rename() {
    local src_file=$1
    local dest_file=$2
    cp "$src_file" "${dest_file}.txt"
    echo "Copied and renamed $src_file to ${dest_file}.txt"
}

# Recursive function to copy and rename files in directories
copy_dir_and_rename() {
    local src_dir=$1
    local dest_dir=$2

    mkdir -p "$dest_dir"
    for file in "$src_dir"/*; do
        if [ -d "$file" ]; then
            copy_dir_and_rename "$file" "$dest_dir/$(basename "$file")"
        else
            extension="${file##*.}"
            base="${file%.*}"
            copy_and_rename "$file" "$dest_dir/$(basename "$base").$extension"
        fi
    done
}

# Copy files to the code_text directory and rename with .txt extension
echo "Copying and converting files to code_text directory..."
copy_and_rename README.md code_text/README.md
copy_and_rename command_list.txt code_text/command_list.txt
copy_and_rename config.py code_text/config.py
copy_and_rename flask_pid.txt code_text/flask_pid.txt
copy_and_rename format_description.txt code_text/format_description.txt
copy_and_rename intro.txt code_text/intro.txt
copy_and_rename package.json code_text/package.json
copy_and_rename planned_features.json code_text/planned_features.json
copy_and_rename pyproject.toml code_text/pyproject.toml
copy_and_rename requirements.txt code_text/requirements.txt
copy_and_rename runtime.txt code_text/runtime.txt
copy_and_rename script_list.txt code_text/script_list.txt
copy_and_rename server.py code_text/server.py
copy_and_rename server_command_list.txt code_text/server_command_list.txt
copy_and_rename server_script_list.txt code_text/server_script_list.txt

# Copy GIT_GPT_SERVER directory structure to code_text and rename with .txt extension
copy_dir_and_rename GIT_GPT_SERVER code_text/GIT_GPT_SERVER

echo "Code text backup completed successfully!"
