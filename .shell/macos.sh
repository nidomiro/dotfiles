#!/usr/bin/env sh

# Add Homebrew to path
export PATH="/opt/homebrew/bin:$PATH"

# Add Python to path
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Configure nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion