if not type -q go
    return
end


set -x GOPATH (go env GOPATH)
set -x PATH $PATH $GOPATH/bin
