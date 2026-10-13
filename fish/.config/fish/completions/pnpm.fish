# Generated on first completion, so it always matches the installed version.
if not type -q pnpm
    exit
end

command pnpm completion fish | source
