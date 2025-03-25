#!bin/bash

# Create backups of individual files and entire directories.
#   - Ask user input for the location of individual files or directories
#   - Ask user input for the location of backup
#   - If the source is a file, it will be copied to the destination.
#   - If the source is a directory, the entire directory and its contents will be copied to the destination.

script_file="$(pwd)/script.log" # Log file

read -p "Enter the file or directory to backup: " src
read -p "Enter backup location: " dest
if [ -e "$src" ]; then
    cp -r "$src" "$dest"
    # Write message to log file
    echo "$(date) - Backup created from $src to $dest" >> "$script_file"
else
    echo "Source does not exist."
fi