# Node.js is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. 
# Homepage: http://nodejs.org/

function npm() {
	case $1 in
		install | uninstall ) $sudo npm -g $* ;;
    link ) npm $* ;;
		*) command npm -g $$* ;;
	esac
}

