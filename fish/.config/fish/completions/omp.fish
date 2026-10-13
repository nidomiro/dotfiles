# Generated on first completion, so it always matches the installed version.
if not type -q omp
    exit
end

command omp completions fish | source
