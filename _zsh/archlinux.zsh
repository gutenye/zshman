# Arch Linux: a lightweight and flexible Linux® distribution that tries to Keep It Simple.
# Homepage: http://www.archlinux.org/

function pacman() {
	case $1 in
		-S | -S[^sih]* | -R* | -U*) $sudo pacman $* ;;
		* ) command pacman $* ;;
	esac
}

alias rc.d="$sudo rc.d"
