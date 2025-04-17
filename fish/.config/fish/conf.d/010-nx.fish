if not type -q nx
    exit
end


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

abbr --add nx-check-all-affected nx affected --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9
abbr --add nx-check-all nx run-many --all --targets=build,type-check,lint,test,test-int --parallel --maxParallel=9
