# Generated on first completion, so it always matches the installed version.
if not type -q wt
    exit
end

COMPLETE=fish command wt | source
