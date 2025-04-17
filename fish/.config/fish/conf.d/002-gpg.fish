if not all_executables_exist gpg gpgconf gpg-agent gpg-connect-agent
    exit
end

set --export SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent >/dev/null

switch (uname)
    case Linux
        echo UPDATESTARTUPTTY | gpg-connect-agent >/dev/null # GPG SSH "agent refused operation" fix
    case Darwin
end
