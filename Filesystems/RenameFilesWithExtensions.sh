#!/bin/bash

# Directory where the files are located
directory="."

# Extension to search for
extension=".txt"

# New prefix for renamed files
new_prefix="new_"

# Loop through the files in the directory
for file in "$directory"/*"$extension"; do
  if [ -f "$file" ]; then
    # Get the file name without the directory path
    filename=$(basename "$file")

    # Generate the new file name with the new prefix
    new_filename="$new_prefix$filename"

    # Rename the file
    mv "$file" "$directory/$new_filename"

    echo "Renamed $filename to $new_filename"

    ls -alh
  fi
done