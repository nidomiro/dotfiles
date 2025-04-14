# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

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


alias nx-check-all-affected='nx affected --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9'
alias nx-check-all='nx run-many --all --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9'

