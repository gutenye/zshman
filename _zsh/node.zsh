function npm() {
	case $1 in
		install | uninstall ) $sudo npm -g $* ;;
    link ) npm $* ;;
		*) command npm -g $$* ;;
	esac
}

