# dotfiles

Execute in this directory:

# Linux

```shell
[ -d ~/.config/fish ] && [ ! -L ~/.config/fish ] && rm -rf ~/.config/fish
stow -v -R -t ~ gpg-linux
stow -v -R -t ~ shell-common
stow -v -R -t ~ bash
stow -v -R -t ~ fish
stow -v -R -t ~ git
```

# MacOS

```shell
[ -d ~/.config/fish ] && [ ! -L ~/.config/fish ] && rm -rf ~/.config/fish
stow -v -R -t ~ gpg-macos
stow -v -R -t ~ shell-common
stow -v -R -t ~ bash
stow -v -R -t ~ fish
stow -v -R -t ~ git
stow -v -R -t ~ zsh
stow -v -R -t ~ macos
```

# enable gpg-sign

```shell
stow -v -R -t ~ git-gpgsign
```
