#!bin/bash

# Display disk usage of a given directory.

script_file="$(pwd)/script.log" # Log file

read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    # Show disk usage of given directory with summary and in human-readable mode
    du -sh "$dir"
    # Write message to log file
    echo "$(date) - Showed disk usage for $dir" >> "$script_file"
else
    echo "Directory does not exist."
fi
