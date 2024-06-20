#!/bin/bash

# Get the current generation
CURRENT_GEN=$(./GIT_GPT_SERVER/scripts/get_config.py CURRENT_GEN)
CURRENT_DATE=$(date '+%Y-%m-%d')

# Define paths
PLANNED_FEATURES_FILE="./planned_features.json"
COMPLETED_FEATURES_FILE="./completed_features.json"

# Check if completed_features.json exists, create if it doesn't
if [ ! -f $COMPLETED_FEATURES_FILE ]; then
    echo "[]" > $COMPLETED_FEATURES_FILE
fi

# Extract completed features and remaining planned features
COMPLETED_FEATURES=$(jq 'map(select(.status == "completed"))' $PLANNED_FEATURES_FILE)
REMAINING_FEATURES=$(jq 'map(select(.status != "completed"))' $PLANNED_FEATURES_FILE)

# Append completed features to completed_features.json
if [ "$(echo $COMPLETED_FEATURES | jq 'length')" -gt 0 ]; then
    jq --argjson completed "$COMPLETED_FEATURES" '. + $completed' $COMPLETED_FEATURES_FILE > tmp.json && mv tmp.json $COMPLETED_FEATURES_FILE
fi

# Update planned_features.json with remaining planned features
echo "$REMAINING_FEATURES" > $PLANNED_FEATURES_FILE

echo "Completed features moved to $COMPLETED_FEATURES_FILE and removed from $PLANNED_FEATURES_FILE successfully."

