set --export SSH_AUTH_SOCK "$(gpgconf --list-dirs agent-ssh-socket)"
gpgconf --launch gpg-agent

switch (uname)
    case Linux
       echo UPDATESTARTUPTTY | gpg-connect-agent # GPG SSH "agent refused operation" fix
    case Darwin
end