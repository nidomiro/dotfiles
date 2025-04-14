function add_to_path_if_exists
    if test -d $argv
        fish_add_path $argv
    end
end
