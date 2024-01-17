if status is-interactive
    # Commands to run in interactive sessions can go here
end




switch (uname)
    case Darwin
        set --export DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
        set --export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
        set --export NODE_OPTIONS "--dns-result-order=ipv4first"
    case Linux
        
end



# abbrieviations
abbr --add ll ls -alFh



