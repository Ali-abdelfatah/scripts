#!/bin/bash

# Directory to check
PROJECT_DIR="/home/alilool/gitproject"

# Check if the directory exists
if [ ! -d "$PROJECT_DIR" ]; then
    echo "Error: Directory '$PROJECT_DIR' does not exist."
    exit 1
fi

# Display the disk usage of the project directory
echo "Disk usage for directory: $PROJECT_DIR"
echo

# Use `du` to summarize disk usage and sort by size
du -h --max-depth=1 "$PROJECT_DIR" | sort -h

echo
echo "Detailed disk usage for files within the directory:"
echo

# Use `du` to display detailed usage of all files and directories
du -ah "$PROJECT_DIR" | sort -h
