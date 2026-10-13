# Generated on first completion, so it always matches the installed version.
if not type -q flux
    exit
end

command flux completion fish | source
