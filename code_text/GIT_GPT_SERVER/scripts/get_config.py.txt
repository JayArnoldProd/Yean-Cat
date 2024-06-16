#!/usr/bin/env python3

import json
import os
import sys

# Locate the project root and config file
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CONFIG_FILE = os.path.join(BASE_DIR, 'config', 'config.json')

# Load JSON configuration
with open(CONFIG_FILE, 'r') as f:
    config = json.load(f)

def get_config_value(key):
    if key in config:
        print(config[key])
    else:
        print(f"Unknown configuration key: {key}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: get_config.py <CONFIG_KEY>", file=sys.stderr)
        sys.exit(1)
    
    get_config_value(sys.argv[1])
