#!/bin/bash

# Check if feature name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <feature_name>"
    exit 1
fi

FEATURE_NAME="$1"
OUTPUT_DIR="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/Feature_Info"
FEATURE_LIST_PATH="/Users/joshuaarnold/Documents/GitHub/Yean-Cat/planned_features.json"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Read the feature list and extract information
FEATURE_INFO=$(python3 << END
import os
import json
import sys

feature_name = "$FEATURE_NAME"
feature_list_path = "$FEATURE_LIST_PATH"

with open(feature_list_path, 'r') as file:
    feature_list = json.load(file)

feature = next((feature for feature in feature_list if feature['name'] == feature_name), None)
if not feature:
    print(f"Error: Feature '{feature_name}' not found in {feature_list_path}")
    sys.exit(1)

feature_description = feature['description']
related_objects = feature['related_objects']
related_scripts = feature['related_scripts']
related_logs = feature['related_logs']

feature_info = f"Feature Name: {feature_name}\nDescription: {feature_description}\n\n"
feature_info += "== Related Objects ==\n"

object_dirs = [
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT/objects",
    "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/YEAN_CAT_SERVER/objects"
]

for obj in related_objects:
    feature_info += f"\nObject: {obj}\n"
    for object_dir in object_dirs:
        obj_path = f"{object_dir}/{obj}"
        if os.path.exists(obj_path):
            for filename in os.listdir(obj_path):
                if filename.endswith(".gml") or filename.endswith(".yy"):
                    file_path = os.path.join(obj_path, filename)
                    with open(file_path, 'r') as file:
                        code = file.read()
                    feature_info += f"\nFile: {filename}\nCode:\n{code}\n"
            break

feature_info += "\n== Related Scripts ==\n"

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
                if filename.endswith(".gml") or filename.endswith(".yy"):
                    file_path = os.path.join(script_subdir_path, filename)
                    with open(file_path, 'r') as file:
                        code = file.read()
                    feature_info += f"\nScript: {script}\nFile: {filename}\nCode:\n{code}\n"
                    found_script = True
            break
    if not found_script:
        feature_info += f"\nScript: {script} not found in the expected directories.\n"

feature_info += "\n== Related Logs ==\n"

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
            feature_info += f"\nLog: {log}\nContent:\n{log_content}\n"
            break

output_path = os.path.join("$OUTPUT_DIR", f"feature_{feature_name}_information.txt")
with open(output_path, 'w') as output_file:
    output_file.write(feature_info)

print(f"Feature information saved to {output_path}")
END
)

# Check for errors
if echo "$FEATURE_INFO" | grep -q "Error:"; then
    echo "$FEATURE_INFO"
    exit 1
fi

echo "Feature information saved successfully."
