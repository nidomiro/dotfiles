

set --export STRICT_LINTING true


abbr --add nx-auto-generate-mint 'npx nx run mint-postman-cli:generate-all-collections && npx nx run mint-postman-cli:cli --job="combine-full-dump" && npx nx affected --target=generate-ocd-runbook --exclude=mint-exceptions && echo "### Don\'t forget to update the postman tests if the collection changed!"'
