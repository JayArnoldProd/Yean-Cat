#!/bin/bash
# backup.sh

echo "Starting backup script..."

# Update lists
./GIT_GPT_SERVER/scripts/update_lists.sh
echo "Backed up Lists!"

# Define directories and files to be backed up
directories=(
    "GIT_GPT_SERVER/scripts"
    "GIT_GPT_SERVER/Logs"
    "GIT_GPT_SERVER/.github"
    "GIT_GPT_SERVER/routes"
    "GIT_GPT_SERVER/tests"
    "GIT_GPT_SERVER/utils"
    "GIT_GPT_SERVER/prompts"
)

# Define miscellaneous files including those in the root directory
misc_files=(
    "GIT_GPT_SERVER/__init__.py"
    "GIT_GPT_SERVER/config.py"
    "GIT_GPT_SERVER/flask_pid.txt"
    "GIT_GPT_SERVER/format_description.txt"
    "GIT_GPT_SERVER/intro.txt"
    "GIT_GPT_SERVER/server.py"
    "README.md"
    "script_list.txt"
    "bug_list.json"
    "command_list.txt"
    "package.json"
    ".slugignore"
    ".env"
    "requirements.txt"
    "planned_features.json"
    ".gitignore"
    "pyproject.toml"
    "Procfile"
    ".gitattributes"
    "server_script_list.txt"
    "runtime.txt"
    "server_command_list.txt"
)

# Function to backup a directory
backup_directory() {
    local directory=$1
    local output_file=$2
    echo "Backing up files from $directory to $output_file..."
    for file in "$directory"/*; do
        if [ -f "$file" ]; then
            echo "Processing $file"
            echo -e "
------ $file ------
$(cat "$file")" >> "$output_file"
        fi
    done
}

# Backup each specified directory
for dir in "${directories[@]}"; do
    dir_name=$(basename "$dir")
    backup_directory "$dir" "GIT_GPT_SERVER/code_backups/${dir_name}_backup.txt"
done

# Backup miscellaneous files
echo "Backing up misc files to GIT_GPT_SERVER/code_backups/misc_backup.txt..."
for file in "${misc_files[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing $file"
        echo -e "
------ $file ------
$(cat "$file")" >> "GIT_GPT_SERVER/code_backups/misc_backup.txt"
    fi
done

# Copy files to code_text directory
copy_to_code_text() {
    local source_file=$1
    local target_file=$2
    echo "Copying $source_file to $target_file..."
    mkdir -p "$(dirname "$target_file")"
    cp "$source_file" "$target_file"
}

# Ensure all necessary files are copied correctly
copy_files() {
    local dir=$1
    for file in "$dir"/*; do
        if [ -f "$file" ]; then
            local target_file="GIT_GPT_SERVER/code_text/${file}.txt"
            copy_to_code_text "$file" "$target_file"
        elif [ -d "$file" ]; then
            copy_files "$file"
        fi
    done
}

# Copy the directories to code_text
copy_files "GIT_GPT_SERVER"

# Copy root directory files to root_code_text
for file in "${misc_files[@]}"; do
    if [ -f "$file" ]; then
        local target_file="root_code_text/${file}.txt"
        copy_to_code_text "$file" "$target_file"
    fi
done

# Generate hierarchy
echo "Generating hierarchy..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Backup completed successfully!"
