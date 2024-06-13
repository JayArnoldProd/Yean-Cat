#!/bin/bash

# Function to backup files from a source directory to a backup file
backup_files() {
    local src_dir=$1
    local backup_file=$2
    local exclude_files=("${@:3}")

    echo "Backing up files from $src_dir to $backup_file..."
    if [ ${#exclude_files[@]} -eq 0 ]; then
        find "$src_dir" -type f -exec cat {} + > "$backup_file"
    else
        find "$src_dir" -type f $(printf "! -name %s " "${exclude_files[@]}") -exec cat {} + > "$backup_file"
    fi
    echo "Backup completed for $src_dir to $backup_file"
}

# Generate script and command lists
echo "Generating script list for YEAN_CAT/scripts..."
find YEAN_CAT/scripts -type f -name "*.gml" -exec basename {} \; > script_list.txt
echo "Script list generated at script_list.txt"

echo "Generating command list for YEAN_CAT/scripts..."
find YEAN_CAT/scripts -type f -name "scr_*.gml" -exec basename {} \; > command_list.txt
echo "Command list generated at command_list.txt"

echo "Generating script list for YEAN_CAT_SERVER/scripts..."
find YEAN_CAT_SERVER/scripts -type f -name "*.gml" -exec basename {} \; > server_script_list.txt
echo "Script list generated at server_script_list.txt"

echo "Generating command list for YEAN_CAT_SERVER/scripts..."
find YEAN_CAT_SERVER/scripts -type f -name "scr_*.gml" -exec basename {} \; > server_command_list.txt
echo "Command list generated at server_command_list.txt"

# Add the changes to git
git add script_list.txt command_list.txt server_script_list.txt server_command_list.txt
git commit -m "Update script and command lists"

# Backup various files
backup_files "GIT_GPT_SERVER/scripts" "code_backups/scripts_backup.txt"
backup_files "GIT_GPT_SERVER/Logs" "code_backups/Logs_backup.txt"
backup_files "GIT_GPT_SERVER/.github" "code_backups/github_backup.txt"
backup_files "GIT_GPT_SERVER/routes" "code_backups/routes_backup.txt"
backup_files "GIT_GPT_SERVER/tests" "code_backups/tests_backup.txt"
backup_files "GIT_GPT_SERVER/utils" "code_backups/utils_backup.txt"
backup_files "GIT_GPT_SERVER/prompts" "code_backups/prompts_backup.txt"
backup_files "GIT_GPT_SERVER" "code_backups/documentation_backup.txt" ".*" "config.py" "flask_pid.txt" "intro.txt"
backup_files "GIT_GPT_SERVER" "code_backups/config_backup.txt" ".*" "server.py"
backup_files "GIT_GPT_SERVER" "code_backups/metadata_backup.txt" ".*" "bug_list.json" "planned_features.json"
backup_files "GIT_GPT_SERVER" "code_backups/git_files_backup.txt" ".env"

# Create the code_text directory in the root
mkdir -p code_text/GIT_GPT_SERVER

# Copy files to the code_text directory
echo "Copying files to code_text directory..."
cp README.md command_list.txt config.py flask_pid.txt format_description.txt intro.txt package.json planned_features.json pyproject.toml requirements.txt runtime.txt script_list.txt server.py server_command_list.txt server_script_list.txt code_text/

# Copy GIT_GPT_SERVER directory structure to code_text
cp -r GIT_GPT_SERVER/* code_text/GIT_GPT_SERVER/

# Remove the .env file from code_text
rm code_text/.env

# Generate hierarchies
./GIT_GPT_SERVER/scripts/generate_hierarchy.sh

echo "Backup script completed successfully!"
