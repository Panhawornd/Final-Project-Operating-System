#!bin/bash

# Search for a file by name or extension of a given directory.

script_file="$(pwd)/script.log" # Log file

read -p "Enter directory path: " dir
read -p "Enter filename or extension to search: " search
if [ -d "$dir" ]; then
    # Insensitive case search (eg. *txt, *TxT,...)
    find "$dir" -iname "$search"
    # Write message to log file
    echo "$(date) - Searched for $search in $dir" >> "$script_file"
else
    echo "Directory does not exist."
fi
