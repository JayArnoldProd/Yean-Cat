from flask import Blueprint, request, jsonify
import json
import os

generate_prompt_route = Blueprint('generate_prompt_route', __name__)

def read_file(filepath):
    try:
        with open(filepath, 'r') as file:
            return file.read()
    except FileNotFoundError:
        return None

def write_file(filepath, content):
    with open(filepath, 'w') as file:
        file.write(content)

@generate_prompt_route.route('/generate_prompt', methods=['POST'])
def generate_prompt():
    data = request.get_json()
    prompt_type = data.get('type')
    item_name = data.get('name')
    save_name = data.get('save_name')
    additional_instructions = data.get('additional_instructions', '')

    if not save_name:
        return jsonify({"error": "Invalid input, 'save_name' field is required"}), 400

    intro = read_file('intro.txt')
    format_description = read_file('format_description.txt')

    if not intro or not format_description:
        return jsonify({"error": "Intro or format description files not found"}), 400

    try:
        if prompt_type == 'bug':
            with open('bug_list.json', 'r') as f:
                bug_list = json.load(f)
            item = next((bug for bug in bug_list if bug['name'] == item_name), None)
            if not item:
                return jsonify({"error": "Bug not found"}), 400

        elif prompt_type == 'feature':
            with open('planned_features.json', 'r') as f:
                feature_list = json.load(f)
            item = next((feature for feature in feature_list if feature['name'] == item_name), None)
            if not item:
                return jsonify({"error": "Feature not found"}), 400

        else:
            return jsonify({"error": "Invalid prompt type"}), 400
    except json.JSONDecodeError as e:
        return jsonify({"error": f"JSON Decode Error: {e}"}), 500

    prompt = f"{intro}\n\n{item['description']}\n\n{format_description}\n\nAdditional Instructions: {additional_instructions}\n\n"

    for script in item['related_scripts']:
        script_path = f"YEAN CAT/scripts/{script}/{script}.gml"
        script_content = read_file(script_path)
        if script_content:
            prompt += f"Script {script}:\n{script_content}\n\n"

    for obj in item['related_objects']:
        obj_path = f"YEAN CAT/objects/{obj}/"
        if os.path.isdir(obj_path):
            for filename in os.listdir(obj_path):
                if filename.endswith('.gml'):
                    file_content = read_file(os.path.join(obj_path, filename))
                    if file_content:
                        prompt += f"Object {obj} ({filename}):\n{file_content}\n\n"

    log_contents = []
    for log in item['logs']:
        log_content = read_file(f'Logs/{log}')
        if log_content:
            log_contents.append(log_content)
    prompt += "Logs:\n" + "\n".join(log_contents) + "\n\n"

    prompt_file_path = f'prompts/{save_name}.txt'
    write_file(prompt_file_path, prompt)

    return jsonify({"message": f"Prompt saved as '{prompt_file_path}'"})
