[[ -e "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
[[ -e "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"

function gem(){
	case $1 in
		install | uninstall | update ) sudo gem $* ;;
		* ) command gem $* ;;
	esac
}

alias rubies='rvm list rubies'
alias gemsets='rvm gemset list'

local ruby18='ruby-1.8.7-p334'
local ruby19='ruby-1.9.2-p180'

function rb18 {
	if [ -z "$1" ]; then
		rvm use "$ruby18"
	else
		rvm use "$ruby18@$1"
	fi
}

function rb19 {
	if [ -z "$1" ]; then
		rvm use "$ruby19"
	else
		rvm use "$ruby19@$1"
	fi
}

function rvm-update {
	rvm get head
	rvm reload # TODO: Reload rvm completion?
}

function rvm-link-completion {
	ln -s "$rvm_path/scripts/zsh/Completion/_rvm" "$ZSH/plugins/rvm/_rvm.official"
}

# TODO: Make this usable w/o rvm.
function gems {
	local current_ruby=`rvm-prompt i v p`
	local current_gemset=`rvm-prompt g`

	gem list $@ | sed \
		-Ee "s/\([0-9\.]+( .+)?\)/$fg[blue]&$reset_color/g" \
		-Ee "s|$(echo $rvm_path)|$fg[magenta]\$rvm_path$reset_color|g" \
		-Ee "s/$current_ruby@global/$fg[yellow]&$reset_color/g" \
		-Ee "s/$current_ruby$current_gemset$/$fg[green]&$reset_color/g"
}
