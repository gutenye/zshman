local screenrc
if [[ "$TERM" == 'xterm-color' ]]; then
  if [[ -e "$HOME/.screenrc" ]]; then
    screenrc="-c '$HOME/.screenrc'"
  fi
fi

if [[ "$TERM" == 'xterm-256color' ]]; then
  if [[ -e "$HOME/.screenrc256" ]]; then
    screenrc="-c '$HOME/.screenrc256'"
  fi
fi

alias screen="screen $screenrc"
#alias sl="screen $screenrc -list" # confict with alias sl="ls"
alias sr="screen $screenrc -a -A -U -D -R"
alias S="screen $screenrc -U -S"
