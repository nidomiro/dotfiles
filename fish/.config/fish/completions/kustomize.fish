# Generated on first completion, so it always matches the installed version.
if not type -q kustomize
    exit
end

command kustomize completion fish | source
