#!bin/bash

# Compress the given files or directories.

script_file="$(pwd)/script.log" # Log file

read -p "Enter file or directory to compress: " src
read -p "Enter name for compressed file (without extension): " dest
if [ -e "$src" ]; then
    tar -czf "$dest.tar.gz" "$src"
    # Write message to log file
    echo "$(date) - Compressed $src into $dest.tar.gz" >> "$script_file"
else
    echo "Source does not exist."
fi
