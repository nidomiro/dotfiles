if not type -q fnm
    exit
end


switch (uname)
    case Darwin
        add_to_path_if_exists "$HOME/Library/Application Support/fnm"
    case Linux
        add_to_path_if_exists "$HOME/.local/share/fnm"
end


fnm env --use-on-cd | source
