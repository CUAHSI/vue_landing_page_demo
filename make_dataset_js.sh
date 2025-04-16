#!/bin/bash

# Check if a filepath argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filepath>"
    exit 1
fi

# Store the filepath argument
FILEPATH="$1"

echo "Processing file: $FILEPATH"

# Read the contents of the file and write to dataset.js with "const dataset =" prepended
if [ -f "$FILEPATH" ]; then
    echo "const dataset =" > dataset.js
    cat "$FILEPATH" >> dataset.js
    echo "File processed successfully. Output written to dataset.js"
else
    echo "Error: File '$FILEPATH' does not exist."
    exit 1
fi