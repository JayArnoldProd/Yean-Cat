#!/bin/bash

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

# Logical groups for miscellaneous files
group1=("Documentation/README.md" "Prompt_Assembly/intro.txt" "Documentation/Game_Command_Format_Documentation.txt")
group2=("GIT_GPT_SERVER/__init__.py" "GIT_GPT_SERVER/config/config.py" "GIT_GPT_SERVER/config/config.json" "GIT_GPT_SERVER/flask_pid.txt" "GIT_GPT_SERVER/server.py")
group3=("Documentation/Terminal_Commands_Documentation.txt" "command_list.txt" "server_script_list.txt" "server_command_list.txt")
group4=("bug_list.json" "planned_features.json" "package.json" "requirements.txt" "pyproject.toml")
group5=(".gitignore" ".gitattributes" ".slugignore" ".env" "Procfile")
