# Generated on first completion, so it always matches the installed version.
if not type -q kcl
    exit
end

command kcl completion fish | source
