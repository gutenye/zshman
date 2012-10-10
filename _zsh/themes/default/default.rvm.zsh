zsh_require theme/rvm

local rvm
helper+='$rvm'
rvm='$(rvm_prompt_info)'

helperrc=(
  rvm_prefix  "" 
  rvm_suffix  "" 
  rvm_options "u" 
  ${(q@kv)helperrc}
)
helperrc=("${(Q@kv)helperrc}")
