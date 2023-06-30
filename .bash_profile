if [ "$PROFILE_LOADED" != 1 ]; then
	. ~/.profile
fi

echo UPDATESTARTUPTTY | gpg-connect-agent # GPG SSH "agent refused operation" fix
