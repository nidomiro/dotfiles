
function all_executables_exist
    # Iterate over each argument
    for cmd in $argv
        # Check if the command exists
        if not type -q $cmd
            return 1
        end
    end
    # Return true if all commands exist or if no arguments are provided
    return 0
end
