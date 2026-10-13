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
stow -v -R -t ~ worktrunk
stow -v -R -t ~ fence
stow -v -R -t ~ herdr
stow -v -R -t ~ ghostty
stow -v -R -t ~ omp

```

# MacOS

```shell
[ -d ~/.config/fish ] && [ ! -L ~/.config/fish ] && rm -rf ~/.config/fish
stow -v -R -t ~ gpg-macos
stow -v -R -t ~ shell-common
stow -v -R -t ~ bash
stow -v -R -t ~ fish
stow -v -R -t ~ git
stow -v -R -t ~ worktrunk
stow -v -R -t ~ fence
stow -v -R -t ~ herdr
stow -v -R -t ~ ghostty
stow -v -R -t ~ ghostty-macos
stow -v -R -t ~ zsh
stow -v -R -t ~ macos
stow -v -R -t ~ omp
```

# enable gpg-sign

```shell
stow -v -R -t ~ git-gpgsign
```

# Secret scanning (gitleaks)

Staged changes are scanned for secrets by a git pre-commit hook, and CI scans the full history
(`.github/workflows/gitleaks.yml`). Tools and tasks are defined in `mise.toml`.

Once per clone (requires [mise](https://mise.jdx.dev)):

```shell
mise trust
mise run setup
```

This installs `gitleaks` and writes `.git/hooks/pre-commit`, which runs `mise run secrets-scan`.
Hooks are not part of the repository, so repeat this on every machine.

Scan the whole history manually:

```shell
mise run secrets-scan-ci
```

Known false positives go into `.gitleaksignore` (one fingerprint per line).
