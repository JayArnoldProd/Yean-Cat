#!/bin/bash

QUESTION=$1
INPUT_TYPE=$2  # Can be "yesno" or "freeinput"

if [ "$INPUT_TYPE" == "yesno" ]; then
    while true; do
        read -p "$QUESTION (y/n): " yn
        case $yn in
            [Yy]* ) echo "yes"; break;;
            [Nn]* ) echo "no"; break;;
            * ) echo "Please answer yes or no.";;
        esac
    done
elif [ "$INPUT_TYPE" == "freeinput" ]; then
    read -p "$QUESTION: " input
    echo "$input"
else
    echo "Invalid input type specified."
fi
