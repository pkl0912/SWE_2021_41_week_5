#!/bin/bash

move_file_to_directory() {
  local file="$1"
  local initial_char=$(basename "$file" | cut -c1)

 
  mv "$file" "$initial_char/"
}


for file in files/*; do
  move_file_to_directory "$file"
done
