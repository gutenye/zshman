local hostname
bol+='$hostname'
hostname='$(prompt_hostname_info)'

function prompt_hostname_info(){
  local name=`hostname`
  if [[ $name == "udev" ]]; then
    echo ""
  else
    echo "@$name"
  fi
}
