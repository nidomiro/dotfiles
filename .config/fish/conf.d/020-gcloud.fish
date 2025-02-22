

if type -q brew
    set --export GCLOUD_SDK_PATH "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
end

set GCLOUD_FISH_INCLUDE "$GCLOUD_SDK_PATH/path.fish.inc"

if test -f $GCLOUD_FISH_INCLUDE
    source $GCLOUD_FISH_INCLUDE
end