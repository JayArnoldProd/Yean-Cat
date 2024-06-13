# backup_config.sh

# Define directories and files to be backed up
directories=(
    "GIT_GPT_SERVER/scripts"
    "GIT_GPT_SERVER/Logs"
    "GIT_GPT_SERVER/.github/workflows"
    "GIT_GPT_SERVER/routes"
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
