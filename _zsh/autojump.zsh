(( ! ${+commands[autojump]} )) && return

if [ -f /usr/share/autojump/autojump.zsh ]; then # debian and ubuntu package
  source /usr/share/autojump/autojump.zsh
elif [ -f /etc/profile.d/autojump.zsh ]; then # manual installation
  source /etc/profile.d/autojump.zsh
elif [ -f /opt/local/etc/profile.d/autojump.zsh ]; then # mac os x with ports
  source /opt/local/etc/profile.d/autojump.zsh
elif [ $commands[brew] -a -f `brew --prefix`/etc/autojump ]; then # mac os x with brew
  source `brew --prefix`/etc/autojump
fi
