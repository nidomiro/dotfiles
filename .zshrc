# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000
setopt autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/niclas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall



export GPG_TTY=$(tty)

. $HOME/.profile

. $HOME/.shell/aliases.sh

