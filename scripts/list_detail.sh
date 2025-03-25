#!bin/bash

# List all files and sub-directories with detailed information of a given directory or file.

script_file="$(pwd)/script.log" # Log file

read -p "Enter directory or file path: " path
if [ -e "$path" ]; then
    ls -lh "$path"
    # Write message to log file
    echo "$(date) - Listed files ($path)" >> "$script_file"
else
    echo "Path does not exist."
fi