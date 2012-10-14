function calc() {
  echo "scale=4; $@" | bc -l
}

function print-path() {
  echo -e '${PATH//:/\\n}'
}

function encode64() { 
  echo -n $1 | base64 
}

function decode64() { 
  echo -n $1 | base64 -D 
}

function volume() {
	case $1 in
		(on) amixer set Master unmute ;;
		(off) amixer set Master mute ;;
		(*) alsamixer ;;
	esac
}

# use cat or less
function less() {
	[ `wc -l "$1" | awk '{print $1}'` -ge $LINES ] && less "$1" || cat "$1"
}


function pmine() {
  ps "$@" -u "$USER" -o pid,%cpu,%mem,command
}

function findexec() {
  find . -type f -iname "*${1:-}*" -exec "${2:-file}" {} \;
}

function history-stat() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function pushdll() {
  if [[ -n "$1" ]]; then
    builtin pushd "$1"
    ls -lFhA
  else
    ls -lFhA
  fi
}

function popdll() {
  builtin popd
  ls -lFhA
}

##
## Network
##

# curl get. 
#
# Usage:
#
#   cget URL [DIR]
#
function cget() {
  ( cd "${2:-.}">/dev/null; curl -OL "$1"; )  
}

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1])"'

alias urldecode='python -c "import sys, urllib as ul; print ul.unquote_plus(sys.argv[1])"'
