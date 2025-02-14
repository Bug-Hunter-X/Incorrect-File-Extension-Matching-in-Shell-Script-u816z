#!/bin/bash

# This script correctly processes a list of files based on their extensions.
# It uses parameter expansion for more robust extension checking.
files=("file1.txt" "file2.pdf" "file3.txt" "file4.jpg")

for file in "${files[@]}"; do
  extension="${file##*}"
  case "$extension" in
    txt)
      echo "Processing text file: $file"
      # Process the text file
      ;;
    pdf)
      echo "Processing PDF file: $file"
      # Process the PDF file
      ;;
    *)
      echo "Skipping file: $file"
      ;;
  esac
done