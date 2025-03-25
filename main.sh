#!bin/bash

# Main menu to connect all functionalities

while true; do
    clear
    echo "===================================="
    echo "*          File Manager Menu       *"
    echo "===================================="
    echo "1. List files and directories with details"
    echo "2. Backup files or directories"
    echo "3. Count number of files in a directory"
    echo "4. Display disk usage of a directory"
    echo "5. Search for a file by name or extension"
    echo "6. Compress files or directories"
    echo "7. Exit"
    echo "===================================="
    read -p "Enter your choice [1-7]: " choice

    case $choice in
        1)
            bash ./scripts/list_detail.sh
            ;;
        2)
            bash ./scripts/backing_up.sh
            ;;
        3)
            bash ./scripts/count_number_of_file.sh
            ;;
        4)
            bash ./scripts/display_disk_usage.sh
            ;;
        5)
            bash ./scripts/search_file.sh
            ;;
        6)
            bash ./scripts/compress.sh
            ;;
        7)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac

    read -p "Press [Enter] key to continue..."
done