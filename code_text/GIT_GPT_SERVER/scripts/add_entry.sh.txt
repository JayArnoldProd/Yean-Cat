#!/bin/bash

TYPE=$1
shift

NAME=$1
DESCRIPTION=$2
SOURCE=$3
PRIORITY=$4
STATUS=$5
DATE=$6
REPORTED_BY=$7
ASSIGNED_TO=$8
GENERATION=$9
shift 9

# Remaining arguments
LOGS=$1
STEPS=$2
RESOLUTION=$3
RELATED_FEATURES=$4
RELATED_OBJECTS=$5
RELATED_SCRIPTS=$6

# Function to convert a string to a JSON array
to_json_array() {
    local arr_str=$1
    echo "$arr_str" | tr -d '\n' | jq -R -s 'split(",") | map(select(length > 0))'
}

# Function to strip trailing spaces and newlines from the input strings
strip_trailing_newlines_and_spaces() {
    local input_str=$1
    echo "$input_str" | tr -d '\n' | sed 's/[[:space:]]*$//'
}

# Function to handle resolution specifically
strip_newlines_resolution() {
    local input_str=$1
    echo "$input_str" | tr -d '\n' | sed 's/\\n/ /g'
}

# Convert string arrays to JSON arrays
LOGS=$(strip_trailing_newlines_and_spaces "$LOGS")
STEPS=$(strip_trailing_newlines_and_spaces "$STEPS")
RESOLUTION=$(strip_newlines_resolution "$RESOLUTION")
RELATED_FEATURES=$(strip_trailing_newlines_and_spaces "$RELATED_FEATURES")
RELATED_OBJECTS=$(strip_trailing_newlines_and_spaces "$RELATED_OBJECTS")
RELATED_SCRIPTS=$(strip_trailing_newlines_and_spaces "$RELATED_SCRIPTS")

LOGS=$(to_json_array "$LOGS")
STEPS=$(to_json_array "$STEPS")
RESOLUTION=$(to_json_array "$RESOLUTION")
RELATED_FEATURES=$(to_json_array "$RELATED_FEATURES")
RELATED_OBJECTS=$(to_json_array "$RELATED_OBJECTS")
RELATED_SCRIPTS=$(to_json_array "$RELATED_SCRIPTS")

# File paths
BUG_LIST_FILE="./bug_list.json"
PLANNED_FEATURES_FILE="./planned_features.json"
FEATURES_FILE="./completed_features.json"

# Function to add an entry
add_entry() {
    local file=$1
    local entry=$2
    if [ ! -f $file ]; then
        echo "[]" > $file
    fi

    local existing_entry=$(jq --arg name "$NAME" '.[] | select(.name == $name)' $file)

    if [ "$existing_entry" != "" ]; then
        read -p "An entry with the name '$NAME' already exists. Do you want to replace it? (y/n): " replace
        if [ "$replace" != "y" ]; then
            echo "Entry addition canceled."
            exit 0
        fi
        jq --arg name "$NAME" 'del(.[] | select(.name == $name))' $file > tmp.json && mv tmp.json $file
    fi

    jq --argjson entry "$entry" '. += [$entry]' $file > tmp.json && mv tmp.json $file
    echo "Entry '$NAME' added successfully."
}

# Prepare entry JSON based on the type
case $TYPE in
    bug)
        ENTRY=$(jq -n --arg name "$NAME" --arg description "$DESCRIPTION" --arg source "$SOURCE" --arg priority "$PRIORITY" \
                    --arg status "$STATUS" --arg date_reported "$DATE" --arg reported_by "$REPORTED_BY" --arg assigned_to "$ASSIGNED_TO" \
                    --arg generation "$GENERATION" --argjson logs "$LOGS" --argjson steps "$STEPS" --argjson resolution "$RESOLUTION" \
                    --argjson related_features "$RELATED_FEATURES" --argjson related_objects "$RELATED_OBJECTS" --argjson related_scripts "$RELATED_SCRIPTS" \
                    '{name: $name, description: $description, source: $source, priority: $priority, status: $status, date_reported: $date_reported, reported_by: $reported_by, assigned_to: $assigned_to, generation: $generation, logs: $logs, steps_to_reproduce: $steps, resolution: $resolution, related_features: $related_features, related_objects: $related_objects, related_scripts: $related_scripts}')
        add_entry $BUG_LIST_FILE "$ENTRY"
        ;;
    planned_feature)
        ENTRY=$(jq -n --arg name "$NAME" --arg description "$DESCRIPTION" --arg source "$SOURCE" --arg priority "$PRIORITY" \
                    --arg status "$STATUS" --arg date_planned "$DATE" --arg planned_by "$REPORTED_BY" --arg assigned_to "$ASSIGNED_TO" \
                    --arg generation "$GENERATION" --argjson related_bugs "$LOGS" --argjson implementation_steps "$STEPS" --argjson dependencies "$RELATED_FEATURES" \
                    --argjson related_objects "$RELATED_OBJECTS" --argjson related_scripts "$RELATED_SCRIPTS" \
                    '{name: $name, description: $description, source: $source, priority: $priority, status: $status, date_planned: $date_planned, planned_by: $planned_by, assigned_to: $assigned_to, generation: $generation, related_bugs: $related_bugs, implementation_steps: $implementation_steps, dependencies: $dependencies, related_objects: $related_objects, related_scripts: $related_scripts}')
        add_entry $PLANNED_FEATURES_FILE "$ENTRY"
        ;;
    feature)
        ENTRY=$(jq -n --arg name "$NAME" --arg description "$DESCRIPTION" --arg source "$SOURCE" --arg priority "$PRIORITY" \
                    --arg status "$STATUS" --arg date_completed "$DATE" --arg completed_by "$REPORTED_BY" --arg generation "$GENERATION" \
                    --argjson related_bugs "$LOGS" --argjson steps "$STEPS" --argjson dependencies "$RELATED_FEATURES" --argjson documentation_links "$RESOLUTION" \
                    --argjson related_objects "$RELATED_OBJECTS" --argjson related_scripts "$RELATED_SCRIPTS" \
                    '{name: $name, description: $description, source: $source, priority: $priority, status: $status, date_completed: $date_completed, completed_by: $completed_by, generation: $generation, related_bugs: $related_bugs, implementation_steps: $steps, dependencies: $dependencies, documentation_links: $documentation_links, related_objects: $related_objects, related_scripts: $related_scripts}')
        add_entry $FEATURES_FILE "$ENTRY"
        ;;
    *)
        echo "Invalid entry type. Use 'bug', 'planned_feature', or 'feature'."
        exit 1
        ;;
esac
