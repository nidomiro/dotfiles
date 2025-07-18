#!/usr/bin/env sh

if [ -f "$HOME/.shell/secrets.sh" ]
then
    . "$HOME/.shell/secrets.sh"
fi

# Mint specific
export STRICT_LINTING=true

# Bun
if [ -d "$HOME/.bun/bin" ]
then
    . "$HOME/.bun/bin"
fi

# gpg
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
export SSH_AUTH_SOCK
gpgconf --launch gpg-agent >/dev/null


# yarn
export YARN_REGISTRY='https://registry.yarnpkg.com'
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# set PATH so it includes Android bins if it exists
if [ -d "$HOME/Android/Sdk/platform-tools" ] ; then
    PATH="$HOME/Android/Sdk/platform-tools:$PATH"
fi

if [ -f "$HOME/.cargo/env" ]
then
    . "$HOME/.cargo/env"
fi


if command -v brew &> /dev/null; then
    CURRENT_SHELL="$0"
    if [ "${CURRENT_SHELL##*bash*}" ]; then
        . "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"
    fi

    if [ "${CURRENT_SHELL##*zsh*}" ]; then
        . "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
        . "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
    fi

fi

export NX_TUI=false

