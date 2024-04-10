if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Load Secrets
if test -f ~/.shell/secrets.sh
    bass source ~/.shell/secrets.sh
end


switch (uname)
    case Darwin
        set --export DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
        set --export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
    case Linux
        
end

if not string match -q -- "*--dns-result-order=ipv4first*" $NODE_OPTIONS
    set -gx NODE_OPTIONS "$NODE_OPTIONS --dns-result-order=ipv4first --max-old-space-size=1024"
end



# abbrieviations
abbr --add ll ls -alFh



