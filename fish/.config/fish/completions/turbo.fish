# Generated on first completion, so it always matches the installed version.
if not type -q turbo
    exit
end

command turbo completion fish | source
