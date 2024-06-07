#!/bin/bash

# Navigate to the project directory
cd /Users/joshuaarnold/Documents/GitHub/Yean-Cat

# Generate a list of all scripts
find "YEAN CAT/scripts" -name "*.gml" -exec basename {} .gml \; > script_list.txt

# Generate a list of all commands starting with scr_
grep -rl "scr_" "YEAN CAT/scripts" | grep ".gml" | xargs -n1 basename | sed 's/^scr_//' | sed 's/.gml$//' > command_list.txt

# Add and commit the updated lists
git add script_list.txt command_list.txt
git commit -m "Update script and command lists"

# Push to Heroku
git push heroku main
