alias ll='ls -alh'

export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

export YARN_REGISTRY='https://registry.yarnpkg.com'

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
