[[ ${+commands[pacman]} != 1 ]] && return

function pacman() {
	case "$1" in
		-S | -S[^sih]* | -R* | -U*) $sudo pacman "$@" ;;
		* ) command pacman "$@" ;;
	esac
}
