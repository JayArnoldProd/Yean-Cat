#!/bin/bash

# Check if bug name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <bug_name>"
    exit 1
fi

BUG_NAME="$1"
OUTPUT_DIR="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/Bug_Info"
BUG_LIST_PATH="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/bug_list.json"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Read the bug list and extract information
BUG_INFO=$(python3 << END
import os
import json
import sys

bug_name = "$BUG_NAME"
bug_list_path = "$BUG_LIST_PATH"

try:
    with open(bug_list_path, 'r') as file:
        bug_list = json.load(file)
except json.JSONDecodeError as e:
    print(f"JSON Decode Error: {str(e)}")
    print(f"Error occurred near line {e.lineno}, column {e.colno}")
    with open(bug_list_path, 'r') as file:
        lines = file.readlines()
    print("Surrounding context:")
    start = max(0, e.lineno - 3)
    end = min(len(lines), e.lineno + 2)
    for i in range(start, end):
        print(f"{i+1}: {lines[i].strip()}")
    sys.exit(1)

bug = next((b for b in bug_list if b['name'] == bug_name), None)
if not bug:
    print(f"Error: Bug '{bug_name}' not found in {bug_list_path}")
    sys.exit(1)

bug_description = bug['description']
related_objects = bug['related_objects']
related_scripts = bug['related_scripts']
related_logs = bug['related_logs']

bug_info = f"Bug Name: {bug_name}\nDescription: {bug_description}\n\n"
bug_info += "== Related Objects ==\n"

object_dirs = [
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT/objects",
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT_SERVER/objects"
]

for obj in related_objects:
    bug_info += f"\nObject: {obj}\n"
    for object_dir in object_dirs:
        obj_path = f"{object_dir}/{obj}"
        if os.path.exists(obj_path):
            for filename in os.listdir(obj_path):
                if filename.endswith(".gml") or filename.endswith(".yy"):
                    file_path = os.path.join(obj_path, filename)
                    with open(file_path, 'r') as file:
                        code = file.read()
                    bug_info += f"\nFile: {filename}\nCode:\n{code}\n"
            break

bug_info += "\n== Related Scripts ==\n"

script_dirs = [
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT/scripts",
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT_SERVER/scripts"
]

for script in related_scripts:
    found_script = False
    for script_dir in script_dirs:
        script_subdir_path = f"{script_dir}/{script}"
        if os.path.exists(script_subdir_path):
            for filename in os.listdir(script_subdir_path):
                if filename.endswith(".gml"):  # Only include .gml files for scripts
                    file_path = os.path.join(script_subdir_path, filename)
                    with open(file_path, 'r') as file:
                        code = file.read()
                    bug_info += f"\nScript: {script}\nFile: {filename}\nCode:\n{code}\n"
                    found_script = True
            break
    if not found_script:
        bug_info += f"\nScript: {script} not found in the expected directories.\n"

bug_info += "\n== Related Logs ==\n"

log_dirs = [
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/Client",
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/Server",
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/GIT_GPT_SERVER/Logs/GIT_GPT"
]

for log in related_logs:
    for log_dir in log_dirs:
        log_path = f"{log_dir}/{log}.txt"
        if os.path.exists(log_path):
            with open(log_path, 'r') as file:
                log_content = file.read()
            bug_info += f"\nLog: {log}\nContent:\n{log_content}\n"
            break

output_path = os.path.join("$OUTPUT_DIR", f"bug_{bug_name}_information.txt")
with open(output_path, 'w') as output_file:
    output_file.write(bug_info)

print(f"Bug information saved to {output_path}")
END
)

# Check for errors
if echo "$BUG_INFO" | grep -q "Error:"; then
    echo "$BUG_INFO"
    exit 1
fi

echo "Bug information saved successfully."
