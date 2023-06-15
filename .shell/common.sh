#!/usr/bin/env sh

if [ -f "$HOME/.shell/secrets.sh" ]
then
    . "$HOME/.shell/secrets.sh"
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
    . "$HOME/.cargo/env"
fi


if ! command -v brew &> /dev/null
then
    CURRENT_SHELL="$0"
    if [ "${CURRENT_SHELL##*bash*}" ]; then
        . "$(brew --prefix)/share/google-cloud-sdk/path.bash.inc"
    fi

    if [ "${CURRENT_SHELL##*zsh*}" ]; then
        . "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
        . "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
    fi

fi

# nx aliases
alias nx-test-all='nx run-many --target=test --all'
alias nx-test-affected='nx affected --target=test'

alias nx-test-int-all='nx run-many --target=test-int --all'
alias nx-int-test-all='nx-test-int-all'
alias nx-test-int-affected='nx affected --target=test-int'
alias nx-int-test-affected='nx-test-int-affected'

alias nx-lint-all='nx run-many --target=lint --all'
alias nx-lint-affected='nx affected --target=lint'

alias nx-type-check-all='nx run-many --target=type-check --all'
alias nx-type-check-affected='nx affected --target=type-check'

alias nx-build-all='nx run-many --target=build --all'
alias nx-build-affected='nx affected --target=build'

alias nx-build-all-production='nx run-many --target=build --all --configuration=production'
alias nx-build-affected-production='nx affected --target=build --configuration=production'

alias nx-auto-generate-mms="npx nx run mint-postman-cli:generate-all-collections && npx nx run mint-postman-cli:cli --job=\"combine-full-dump\" && npx nx affected --target=generate-ocd-runbook --exclude=mint-exceptions && echo \"### Don't forget to update the postman tests if the collection changed! ###\""





