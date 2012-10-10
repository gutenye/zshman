loadpath=($ZSH/lib $ZSH/plugins)
zsh_require theme
zsh_require plugin

zcm_plugins=(); zcm_themes=(); zcm_keymaps=()
source "$ZSH/Pluginfile"

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

# init completion
fpath=($ZSH/completions $fpath)

autoload -U compinit && compinit -i # ignore inscure directory

# Compile zcompdump, if modified, to increase startup speed.
if [[ "$HOME/.zcompdump" -nt "$HOME/.zcompdump.zwc" ]] || [[ ! -e "$HOME/.zcompdump.zwc" ]]; then
  zcompile "$HOME/.zcompdump"
fi
