local user
bol+='$user'
user='$(prompt_user_info)'

function prompt_user_info(){
  local name=`whoami`
  if [[ $name == "guten" ]]; then 
    echo ""
  else 
    echo "$name:"
  fi
}
