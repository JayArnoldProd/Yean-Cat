import os
import json

def gather_bug_information(bug_name, output_directory):
    # Path to the bug list JSON file
    bug_list_path = "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/bug_list.json"

    # Read the bug list
    with open(bug_list_path, 'r') as file:
        bug_list = json.load(file)

    # Find the bug in the bug list
    bug = next((bug for bug in bug_list if bug['name'] == bug_name), None)
    if not bug:
        print(f"Error: Bug '{bug_name}' not found in {bug_list_path}")
        return

    # Extract bug information
    bug_description = bug['description']
    related_objects = bug['related_objects']
    related_scripts = bug['related_scripts']
    related_logs = bug['related_logs']

    # Initialize the bug info text
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
        for script_dir in script_dirs:
            script_path = f"{script_dir}/{script}.gml"
            if os.path.exists(script_path):
                with open(script_path, 'r') as file:
                    code = file.read()
                bug_info += f"\nScript: {script}\nCode:\n{code}\n"
                break

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

    output_path = os.path.join(output_directory, f"bug_{bug_name}_information.txt")
    with open(output_path, 'w') as output_file:
        output_file.write(bug_info)

    print(f"Bug information saved to {output_path}")

# Example usage
if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python gather_bug_information.sh <bug_name>")
    else:
        bug_name = sys.argv[1]
        output_directory = "/Users/joshuaarnold/Documents/GitHub/Yean-Cat/Bug_Info"
        gather_bug_information(bug_name, output_directory)
