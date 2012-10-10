if [ -f /etc/profile.d/autojump.zsh ]; then
	source /etc/profile.d/autojump.zsh
elif ( ${commands[brew]} && [ -f `brew --prefix`/etc/autojump ] ); then
  . `brew --prefix`/etc/autojump
fi


