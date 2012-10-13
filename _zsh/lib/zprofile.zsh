source "$ZSH/lib/zcm.zsh"
zcm_plugins=(); zcm_themes=(); zcm_keymaps=()
source "$ZSH/Pluginfile"

for name ($zcm_plugins) do
	file=$ZSH/$name.profile.zsh
	[[ -e $file ]] && source $file
done
