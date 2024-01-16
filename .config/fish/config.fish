if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --export SSH_AUTH_SOCK "$(gpgconf --list-dirs agent-ssh-socket)"
gpgconf --launch gpg-agent

fish_add_path "/opt/homebrew/bin"

starship init fish | source

switch (uname)
    case Darwin
        set --export DOCKER_HOST "unix://$HOME/.colima/default/docker.sock"
        set --export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE "/var/run/docker.sock"
        set --export NODE_OPTIONS "--dns-result-order=ipv4first"
    case Linux
        
end

set --export NVM_DIR "$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh





# abbrieviations
abbr --add ll ls -alFh

abbr --add trigger-ci 'git pull && git commit --no-verify --allow-empty -m "trigger ci" && git push'

## nx abbreviations
abbr --add nx-test-all nx run-many --target=test --all
abbr --add nx-test-affected nx affected --target=test

abbr --add nx-test-int-all nx run-many --target=test-int --all
abbr --add nx-int-test-all nx-test-int-all
abbr --add nx-test-int-affected nx affected --target=test-int
abbr --add nx-int-test-affected nx-test-int-affected

abbr --add nx-lint-all nx run-many --target=lint --all
abbr --add nx-lint-affected nx affected --target=lint

abbr --add nx-type-check-all nx run-many --target=type-check --all
abbr --add nx-type-check-affected nx affected --target=type-check

abbr --add nx-build-all nx run-many --target=build --all
abbr --add nx-build-affected nx affected --target=build

abbr --add nx-build-all-production nx run-many --target=build --all --configuration=production
abbr --add nx-build-affected-production nx affected --target=build --configuration=production

abbr --add nx-auto-generate-mms 'npx nx run mint-postman-cli:generate-all-collections && npx nx run mint-postman-cli:cli --job="combine-full-dump" && npx nx affected --target=generate-ocd-runbook --exclude=mint-exceptions && echo "### Don\'t forget to update the postman tests if the collection changed!"'

abbr --add nx-check-all-affected nx affected --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9
abbr --add nx-check-all nx run-many --all --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9


