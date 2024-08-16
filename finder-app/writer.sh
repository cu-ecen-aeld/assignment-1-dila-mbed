#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required: <full path to file> <text string>"
    exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Attempt to create or overwrite the file with the provided content
echo "$writestr" > "$writefile"

# Check if the file was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file $writefile."
    exit 1
fi

echo "File $writefile created with content:"
echo "$writestr"

exit 0
