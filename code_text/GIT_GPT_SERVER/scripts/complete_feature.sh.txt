#!/bin/bash

FEATURE_NAME=$1
COMPLETED_BY=$2
CURRENT_GEN=$(./GIT_GPT_SERVER/scripts/get_config.py CURRENT_GEN)
CURRENT_DATE=$(date '+%Y-%m-%d')

PLANNED_FEATURES_FILE="./planned_features.json"
COMPLETED_FEATURES_FILE="./completed_features.json"

# Check if completed_features.json exists, create if it doesn't
if [ ! -f $COMPLETED_FEATURES_FILE ]; then
    echo "[]" > $COMPLETED_FEATURES_FILE
fi

# Find the feature in planned_features.json
FEATURE=$(jq --arg name "$FEATURE_NAME" '.[] | select(.name == $name)' $PLANNED_FEATURES_FILE)

if [ "$FEATURE" == "" ]; then
    echo "No planned feature with the name '$FEATURE_NAME' found."
    exit 1
fi

# Update the status and completion details
UPDATED_FEATURE=$(echo "$FEATURE" | jq --arg date "$CURRENT_DATE" --arg gen "$CURRENT_GEN" --arg completed_by "$COMPLETED_BY" \
    '.status = "completed" | .date_completed = $date | .generation = $gen | .completed_by = $completed_by')

# Add to completed_features.json
jq --argjson feature "$UPDATED_FEATURE" '. += [$feature]' $COMPLETED_FEATURES_FILE > tmp.json && mv tmp.json $COMPLETED_FEATURES_FILE

# Remove from planned_features.json
jq --arg name "$FEATURE_NAME" 'del(.[] | select(.name == $name))' $PLANNED_FEATURES_FILE > tmp.json && mv tmp.json $PLANNED_FEATURES_FILE

echo "Feature '$FEATURE_NAME' completed and moved to $COMPLETED_FEATURES_FILE successfully."
