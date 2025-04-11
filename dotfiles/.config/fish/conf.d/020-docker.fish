
switch (uname)
    case Darwin
        set -gx DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
        set -gx TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
    case Linux
end
