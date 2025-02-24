if [ "$PROFILE_LOADED" != 1 ]; then
	. ~/.profile
fi

echo UPDATESTARTUPTTY | gpg-connect-agent # GPG SSH "agent refused operation" fix

if [ -e /home/niclas/.nix-profile/etc/profile.d/nix.sh ]; then . /home/niclas/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
