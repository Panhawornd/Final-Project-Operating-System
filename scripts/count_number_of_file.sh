#!bin/bash

# Count the number of files in a directory of a given directory.

script_file="$(pwd)/script.log" # Log file

read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    # List all file within directory and sub-directory and count all the files
    count=$(find "$dir" -type f | wc -l)
    echo "Number of files: $count"
    # Write message to log file
    echo "$(date) - Counted $count files in $dir" >> "$script_file"
else
    echo "Directory does not exist."
fi
