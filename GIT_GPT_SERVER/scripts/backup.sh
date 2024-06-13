#!/bin/bash
# backup.sh

echo "Starting backup script..."

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
misc_files=()

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
    backup_directory "$dir" "GIT_GPT_SERVER/folder_backups/${dir_name}_backup.txt"
done

# Backup miscellaneous files
echo "Backing up misc files from GIT_GPT_SERVER to GIT_GPT_SERVER/folder_backups/misc_backup.txt..."
for file in GIT_GPT_SERVER/*; do
    if [ -f "$file" ] && [[ "$file" != *"GIT_GPT_SERVER/folder_backups/"* ]]; then
        misc_files+=("$file")
        echo "Processing $file"
        echo -e "
------ $file ------
$(cat "$file")" >> "GIT_GPT_SERVER/folder_backups/misc_backup.txt"
    fi
done

# Ensure server_logs.json is copied correctly
if [ -f "GIT_GPT_SERVER/Logs/server_logs.json" ]; then
    echo "Copying server_logs.json to code_text directory..."
    cp "GIT_GPT_SERVER/Logs/server_logs.json" "GIT_GPT_SERVER/code_text/server_logs.json.txt"
fi

# Generate hierarchy
echo "Generating hierarchy..."
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Backup completed successfully!"
