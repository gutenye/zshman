typeset -A rc themerc helperrc
zcm_themes=(); zcm_keymaps=()
[[ $(id -u) -eq 0 ]] && sudo="" || sudo="sudo"

source "$ZSH/lib/zcm.zsh"
source "$ZSH/lib/specturm.zsh"
source "$ZSH/lib/theme.zsh"
source "$ZSH/lib/plugin.zsh"

autoload -U colors && colors

# init completion
fpath=($HOME/.zsh/completion $ZSH/bin/zsh-completion $fpath)

autoload -U compinit && compinit -i # ignore inscure directory

# Compile zcompdump, if modified, to increase startup speed.
if [[ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" ]] || [[ ! -e "$HOME/.zcompdump.zwc" ]]; then
  zcompile "$HOME/.zcompdump"
fi

# init plugin
for file ($HOME/.zsh/*.zsh(N)) do
  case "$file" in
    *.linux.zsh ) [[ $ZSH_OS == "linux" ]] && source "$file" ;;
    *.osx.zsh ) [[ $ZSH_OS == "osx"  ]] && source "$file" ;;
    * ) source "$file" ;;
  esac
done
