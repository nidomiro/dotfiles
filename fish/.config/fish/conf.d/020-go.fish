if not type -q go
    return
end


set -x GOPATH (go env GOPATH)
add_to_path_if_exists $GOPATH/bin
