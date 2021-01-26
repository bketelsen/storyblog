#!/bin/bash

for filename in *.md; do
    [ -e "$filename" ] || continue
    # ... rest of the loop body
    echo Processing "$filename"
    echo creating directory $(basename "$filename" .md)"
    mkdir -p $(basename "$filename" .md)
    mv "$filename" $(basename "$filename" .md)/index.md 
done