#!/bin/bash

# Create the code_text directory in the root
mkdir -p code_text/GIT_GPT_SERVER/github/workflows

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
            local sub_dir=$(basename "$file")
            if [[ "$sub_dir" == .* || "$sub_dir" == __pycache__ ]]; then
                continue
            fi
            copy_dir_and_rename "$file" "$dest_dir/$sub_dir"
        else
            filename=$(basename "$file")
            if [[ "$filename" == "__init__.py" ]]; then
                continue
            fi
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
copy_and_rename "Documentation/Game_Command_Format_Documentation.txt" "code_text/Game_Command_Format_Documentation.txt"
copy_and_rename "Documentation/Terminal_Commands_Documentation.txt" "code_text/Terminal_Commands_Documentation.txt"

# Copy GIT_GPT_SERVER directory structure to code_text and rename with .txt extension
copy_dir_and_rename GIT_GPT_SERVER code_text/GIT_GPT_SERVER

# Copy .github/workflows/main.yml to code_text/GIT_GPT_SERVER/github/workflows
if [ -f ".github/workflows/main.yml" ]; then
    copy_and_rename ".github/workflows/main.yml" "code_text/GIT_GPT_SERVER/github/workflows/main.yml"
else
    echo "File .github/workflows/main.yml does not exist"
fi

# Copy .gitignore, .slugignore, and .gitattributes to code_text
if [ -f ".gitignore" ]; then
    copy_and_rename ".gitignore" "code_text/gitignore"
else
    echo "File .gitignore does not exist"
fi

if [ -f ".slugignore" ]; then
    copy_and_rename ".slugignore" "code_text/slugignore"
else
    echo "File .slugignore does not exist"
fi

if [ -f ".gitattributes" ]; then
    copy_and_rename ".gitattributes" "code_text/gitattributes"
else
    echo "File .gitattributes does not exist"
fi

echo "Code text backup completed successfully!"
