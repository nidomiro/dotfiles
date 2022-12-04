#!/usr/bin/env sh

# gpg
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export SSH_AUTH_SOCK
gpgconf --launch gpg-agent


# yarn
export YARN_REGISTRY='https://registry.yarnpkg.com'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# set PATH so it includes Android bins if it exists
if [ -d "$HOME/Android/Sdk/platform-tools" ] ; then
    PATH="$HOME/Android/Sdk/platform-tools:$PATH"
fi

. "$HOME/.cargo/env"