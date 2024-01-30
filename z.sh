#!/bin/bash

for file in *; do
    if [[ -L "$file" ]]; then
        # Get the target of the symlink
        target=$(readlink "$file")

        # Check if the target starts with /Users/dan/src/devenv and replace it
        if [[ $target == /Users/dan/src/devenv* ]]; then
            echo "$file -> ..${target#/Users/dan/src/devenv}"
            ln -fs ..${target#/Users/dan/src/devenv} $file
        else
            echo "$file -> $target"
        fi
    else
        echo "$file is not a symlink"
    fi
done
