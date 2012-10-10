function precmd(){
	if [ -f /var/tmp/sysupgrade.notice ]; then
		echo "you have upgrade the system."
		rm /var/tmp/sysupgrade.notice
	fi
}
