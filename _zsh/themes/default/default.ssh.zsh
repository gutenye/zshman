source "$ZSH/lib/theme/ssh.zsh"

local ssh
helper+='$ssh'
ssh='$(ssh_prompt_info)'

helperrc=(
  ssh_prefix  " "
  ssh_suffix  ""
  ${(q@kv)helperrc}
)
helperrc=("${(Q@kv)helperrc}")

themerc=(
  ssh   "$fg[yellow]"
  ${(q@kv)themerc}
)
themerc=("${(Q@kv)themerc}")
