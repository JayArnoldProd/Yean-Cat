#!/bin/bash

# Function to backup a directory with specific file patterns
backup_directory() {
    local source_dir=$1
    local backup_file=$2
    shift 2
    local patterns=("$@")

    # Clear the backup file before writing new data
    : > "$backup_file"

    echo "Backing up files from $source_dir to $backup_file..."
    for pattern in "${patterns[@]}"; do
        find "$source_dir" -type f -name "$pattern" | while read -r file; do
            echo "== Begin: ${file##*/}" >> "$backup_file"
            # Handle binary files properly to prevent corruption
            if [[ $file == *.pyc ]]; then
                xxd "$file" >> "$backup_file"
            else
                cat "$file" >> "$backup_file"
            fi
            echo -e "\n== End: ${file##*/}\n" >> "$backup_file"
        done
    done
    echo "Backup completed for $source_dir to $backup_file"
}

# Ensure the code_backups directory exists
mkdir -p code_backups

# List of directories to backup
backup_dirs=(
    "code_text/GIT_GPT_SERVER/scripts"
    "code_text/GIT_GPT_SERVER/Logs"
    "code_text/GIT_GPT_SERVER/routes"
    "code_text/GIT_GPT_SERVER/scripts/tests"
    "code_text/GIT_GPT_SERVER/utils"
    "code_text/GIT_GPT_SERVER/prompts"
)

# Backup each directory
for dir in "${backup_dirs[@]}"; do
    backup_file="code_backups/$(basename "$dir")_backup.txt"
    backup_directory "$dir" "$backup_file" "*.txt"
done

# Backup specific groups of files
backup_directory "Documentation" "code_backups/documentation_backup.txt" "*.txt"
backup_directory "Prompt_Assembly" "code_backups/documentation_backup.txt" "*.txt"
backup_directory "code_text" "code_backups/config_backup.txt" "config.py.txt" "pyproject.toml.txt" "requirements.txt.txt" "runtime.txt.txt"
backup_directory "code_text" "code_backups/metadata_backup.txt" "command_list.txt.txt" "planned_features.json.txt"

# Explicitly include specific files that may be missed
backup_directory "code_text" "code_backups/documentation_backup.txt" "Game_Command_Format_Documentation.txt.txt" "Terminal_Commands_Documentation.txt.txt"

# Append Last_Words files to the documentation_backup.txt
LAST_WORDS_DIR="Last_Words"
documentation_backup="code_backups/documentation_backup.txt"

if [ -d "$LAST_WORDS_DIR" ]; then
    echo "Appending Last_Words files to $documentation_backup..."
    for file in "$LAST_WORDS_DIR"/*.txt; do
        [ -e "$file" ] || continue
        echo "== Begin: ${file##*/}" >> "$documentation_backup"
        cat "$file" >> "$documentation_backup"
        echo -e "\n== End: ${file##*/}\n" >> "$documentation_backup"
    done
    echo "Last_Words files appended to $documentation_backup"
else
    echo "Last_Words directory does not exist. Skipping."
fi

# Convert README.md to plain text and append to documentation_backup.txt
if [ -f "Documentation/README.md" ]; then
    echo "Converting README.md to plain text and appending to documentation_backup.txt..."
    pandoc "Documentation/README.md" -t plain -o "Documentation/README.txt"
    echo "== Begin: README.txt" >> "$documentation_backup"
    cat "Documentation/README.txt" >> "$documentation_backup"
    echo -e "\n== End: README.txt\n" >> "$documentation_backup"
    rm "Documentation/README.txt"
else
    echo "README.md does not exist. Skipping."
fi

# Debugging: Check if the specific files exist in the code_text directory
echo "Checking for specific files in the code_text directory..."
if [ -f "code_text/Game_Command_Format_Documentation.txt.txt" ]; then
    echo "Game_Command_Format_Documentation.txt.txt exists."
else
    echo "Game_Command_Format_Documentation.txt.txt does not exist."
fi

if [ -f "code_text/Terminal_Commands_Documentation.txt.txt" ]; then
    echo "Terminal_Commands_Documentation.txt.txt exists."
else
    echo "Terminal_Commands_Documentation.txt.txt does not exist."
fi

echo "Ensuring all files in code_text have the correct extensions..."
echo "Backup script completed successfully!"
