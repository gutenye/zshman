function view(){
	case $1 in
		sysupgrade.*) rm /var/tmp/sysupgrade.notice ;;
	esac

	$EDITOR /var/log/$1
}
