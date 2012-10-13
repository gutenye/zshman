function pacman() {
	case $1 in
		-S | -S[^sih]* | -R* | -U*) $sudo pacman $* ;;
		* ) command pacman $* ;;
	esac
}

alias rc.d="$sudo rc.d"
