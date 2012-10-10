function rvm_prompt_info(){
  [[ ${+commands[rvm-prompt]} != 1 ]] && return
  
  echo "$helperrc[rvm_prefix]$(rvm-prompt $helperrc[rvm_options])$helperrc[rvm_suffix]"
}
