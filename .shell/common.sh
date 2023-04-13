#!/usr/bin/env sh

if [ -f "$HOME/.shell/secrets.sh" ]
then
    source "$HOME/.shell/secrets.sh"
fi

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

if [ -f "$HOME/.cargo/env" ]
then
    source "$HOME/.cargo/env"
fi


if ! command -v brew &> /dev/null
then
    CURRENT_SHELL="$0"
    if [ "${CURRENT_SHELL##*bash*}" ]; then
        source "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"
    fi

    if [ "${CURRENT_SHELL##*zsh*}" ]; then
        source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
        source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
    fi

fi



