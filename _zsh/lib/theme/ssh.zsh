# login@host
function ssh_prompt_info(){
  [[ ${+SSH_CONNECTION} != 1 ]] && return

  echo "$helperrc[ssh_prefix]%n@%m$helperrc[ssh_suffix]"
}
