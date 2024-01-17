#!/usr/bin/env fish

# Define an array of paths to be added to the PATH using multiline syntax
set custom_paths """
    ~/bin
"""

# Loop through the custom_paths array and add each directory if it exists
for directory in (echo $custom_paths)
    if test -d $directory
        fish_add_path $directory
    end
end

