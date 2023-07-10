#!/usr/bin/env sh

# Add Homebrew to path
export PATH="/opt/homebrew/bin:$PATH"

# Add Python to path
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Configure nvm
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# JDK
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include $CPPFLAGS"

# LLVM
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib $LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include $CPPFLAGS"

# load custom extensions / commands
source "$HOME/.shell/common.sh"

gpg-connect-agent updatestartuptty /bye