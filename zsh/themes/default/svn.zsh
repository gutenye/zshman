source "$ZSH/lib/theme/svn.zsh"

local svn
helper+='$svn'
svn='$(svn_prompt_info)'

helperrc=(
  svn_prefix  " "
  svn_suffix  ""
  ${(q@kv)helperrc}
)
helperrc=("${(Q@kv)helperrc}")

themerc=(
  svn         "$fg[green]"
  ${(q@kv)themerc}
)
themerc=("${(Q@kv)themerc}")
