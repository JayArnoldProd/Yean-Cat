#!/bin/bash

# Generate a list of all scripts
find "YEAN CAT/scripts" -name "*.gml" -exec basename {} .gml \; > script_list.txt

# Generate a list of all commands starting with scr_
grep -r "function scr_" "YEAN CAT/scripts" | awk -F'function ' '{print $2}' | awk -F'(' '{print $1}' | sort -u > command_list.txt

# Commit and push the updated lists
git add script_list.txt command_list.txt
git commit -m "Update
