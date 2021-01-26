#!/bin/bash

for filename in *.md; do
    [ -e "$filename" ] || continue
    # ... rest of the loop body
    echo Processing "$filename"
    echo creating directory $(basename "$filename" .md)
    directory=$(basename "$filename" .md)
    mkdir -p $directory
    mv $filename ${directory}/index.md
done