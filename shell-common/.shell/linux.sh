#!/usr/bin/env sh

if [ -d "$HOME/.linuxbrew/bin" ]; then
    # Set PATH, MANPATH, etc., for Homebrew.
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # shellcheck disable=SC2091
    $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    export PROFILE_HOMEBREW_LOADED=1
fi




# Configure nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"


# load custom extensions / commands
. "$HOME/.shell/common.sh"

echo UPDATESTARTUPTTY | gpg-connect-agent >/dev/null # GPG SSH "agent refused operation" fix