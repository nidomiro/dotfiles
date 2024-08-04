# fnm
# TODO: different path for linux and macOS

switch (uname)
    case Darwin
        set -x PATH "/Users/rossberger/Library/Application Support/fnm" $PATH
    case Linux
        set -x PATH "$HOME/.local/share/fnm" $PATH
end


fnm env --use-on-cd  | source
