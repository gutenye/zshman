function precmd(){
	if [ -f /var/tmp/sysupgrade.notice ]; then
		echo "you have upgrade the system."
		rm /var/tmp/sysupgrade.notice
	fi
}

function view(){
	case $1 in
		sysupgrade.*) rm /var/tmp/sysupgrade.notice ;;
	esac

	$EDITOR /var/log/$1
}
