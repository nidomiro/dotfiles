# fnm
# TODO: different path for linux and macOS

switch (uname)
    case Darwin
        set PATH "/Users/rossberger/Library/Application Support/fnm" $PATH
    case Linux
end


fnm env --use-on-cd  | source
