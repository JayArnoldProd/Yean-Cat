#!/bin/bash

# Generate a list of all scripts
find YEAN\ CAT/scripts -name "*.gml" > script_list.txt

# Generate a list of all commands starting with scr_
grep -r "scr_" YEAN\ CAT/scripts/ | cut -d':' -f1 | grep ".gml" | sort -u | xargs -n1 basename | sed 's/scr_//' | sed 's/.gml//' > command_list.txt

# Commit and push the updated lists
git add script_list.txt command_list.txt
git commit -m "Update script and command lists"
