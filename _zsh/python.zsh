# Python is a programming language that lets you work more quickly and integrate your systems more effectively. 
# Homepage: http://www.python.org/

alias easy_install="$sudo easy_install" 

function pip() {
	if [[ -n ${VIRTUAL_ENV+1} && -w $VIRTUAL_ENV ]]; then
		command pip $*
	else
		case $1 in
			install | uninstall ) $sudo pip$* ;;
			*) command pip $* ;;
		esac
	fi
}

# Find python file
alias pyfind='find . -name "*.py"'

# Remove python compiled byte-code
alias pyclean='find . -type f -name "*.py[co]" -delete'

# Grep among .py files
alias pygrep='grep --include="*.py"'
