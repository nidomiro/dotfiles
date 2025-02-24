#!/usr/bin/env fish


function addToPathIfExists
    if test -d $argv
        fish_add_path $argv
    end
end



addToPathIfExists ~/bin
addToPathIfExists /opt/homebrew/bin


