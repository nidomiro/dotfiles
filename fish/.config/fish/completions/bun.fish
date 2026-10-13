# Generated on first completion, so it always matches the installed version.
if not type -q bun
    exit
end

SHELL=fish command bun completions | source
