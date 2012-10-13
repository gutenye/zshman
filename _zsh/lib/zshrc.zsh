typeset -A rc themerc helperrc 
zcm_plugins=(); zcm_themes=(); zcm_keymaps=()

source "$ZSH/lib/zcm.zsh"
source "$ZSH/lib/specturm.zsh"
source "$ZSH/lib/theme.zsh"
source "$ZSH/lib/plugin.zsh"
source "$ZSH/Pluginfile"

autoload -U colors && colors 

# init completion
fpath=($ZSH/completion $fpath)

autoload -U compinit && compinit -i # ignore inscure directory

# Compile zcompdump, if modified, to increase startup speed.
if [[ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" ]] || [[ ! -e "$HOME/.zcompdump.zwc" ]]; then
  zcompile "$HOME/.zcompdump"
fi

# init plugin
for pathspec ($zcm_plugins) do
  zsh_init_plugin $pathspec
done

# init theme
for pathspec ($zcm_themes) do
  zsh_init_theme $pathspec
done

# init keymap
for pathspec ($zcm_keymaps) do
  zsh_init_keymap $pathspec
done

