

if type -q go 
    set -x GOPATH (go env GOPATH)
    set -x PATH $PATH $GOPATH/bin
end
