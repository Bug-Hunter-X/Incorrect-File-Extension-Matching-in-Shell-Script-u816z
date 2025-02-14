#!/bin/bash

# This script attempts to process a list of files but contains a subtle error.
# It uses a for loop and an if statement to check file extensions. 
files=("file1.txt" "file2.pdf" "file3.txt" "file4.jpg")

for file in "${files[@]}"; do
  if [[ "$file" == *.txt ]]; then
    echo "Processing text file: $file"
    # Process the text file
  elif [[ "$file" == *.pdf ]]; then
    echo "Processing PDF file: $file"
    # Process the PDF file
  else
    echo "Skipping file: $file"
  fi
  echo "Current file: $file"
done