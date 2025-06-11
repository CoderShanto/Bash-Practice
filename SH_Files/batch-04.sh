#!/bin/bash
# This tells the system this is a bash script

SOURCE_DIR="$HOME/Downloads"
# The folder where your messy files are

cd "$SOURCE_DIR"
# Go to that folder (like opening it in terminal)

for file in *; do
# This means: for every file in the folder...

    if [[ -f "$file" ]]; then
    # Check if it's a normal file (not folder)

        extension="${file##*.}"
        # Get file extension (like pdf, jpg, etc.)

        folder="${extension^^}_Files"
        # Make folder name like PDF_Files or JPG_Files (^^ = uppercase)

        mkdir -p "$folder"
        # Make the folder if it doesn't already exist

        mv "$file" "$folder/"
        # Move the file into its new folder

        echo "Moved $file to $folder"
        # Show what happened
    fi
done
