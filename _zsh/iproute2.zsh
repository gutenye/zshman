function ipl(){
	case $1 in
		"" ) ip link ;;
		* ) $sudo ip link $* ;;
	esac
}

function ipa(){
	case $1 in
		"" ) ip addr ;;
		* ) $sudo ip addr $* ;;
	esac
}

function ipaddrl(){
	case $1 in
		"" ) ip addrlabel ;;
		* ) $sudo ip addrlabel $* ;;
	esac
}

function ipr(){
	case $1 in
		"" ) ip route ;;
		* ) $sudo ip route $* ;;
	esac
}

function ipru(){
	case $1 in
		"" ) ip rule ;;
		* ) $sudo ip rule $* ;;
	esac
}


function ipn(){
	case $1 in
		"" ) ip neigh ;;
		* ) $sudo ip neigh $* ;;
	esac
}


function ipt(){
	case $1 in
		"" ) ip tunnel ;;
		* ) $sudo ip tunnel $* ;;
	esac
}

function ipma(){
	case $1 in
		"" ) ip maddr ;;
		* ) $sudo ip maddr $* ;;
	esac
}


function ipmr(){
	case $1 in
		"" ) ip mroute ;;
		* ) $sudo ip mroute $* ;;
	esac
}

function ipmo(){
	case $1 in
		"" ) ip monitor ;;
		* ) $sudo ip monitor $* ;;
	esac
}
