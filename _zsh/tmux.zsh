# tmux is a terminal multiplexer
# Homepage: http://tmux.sourceforge.net/

local tmuxconf
if [[ "$TERM" == 'xterm-color' ]]; then
  if [[ -e "$HOME/.tmux.conf" ]]; then
    tmuxconf="-f '$HOME/.tmux.conf'"
  fi
fi

if [[ "$TERM" == 'xterm-256color' ]]; then
  if [[ -e "$HOME/.tmux265.conf" ]]; then
    tmuxconf="-f '$HOME/.tmux256.conf'"
  fi
fi

alias tmux="tmux $tmuxconf"
alias tls="tmux list-sessions"
