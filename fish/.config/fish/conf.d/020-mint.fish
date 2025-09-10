

set --export STRICT_LINTING true


abbr --add nx-auto-generate-mint npx nx affected --target=generate-ocd-runbook --exclude=mint-exceptions

function refresh_mint_npm_gcp_token
    set -xg NPM_MINT_GCP_TOKEN (gcloud auth print-access-token)
    echo "NPM_MINT_GCP_TOKEN is set." 
end
