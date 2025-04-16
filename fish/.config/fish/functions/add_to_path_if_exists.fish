function add_to_path_if_exists
    if test -d $argv[1]
        fish_add_path --path $argv
    end
end
