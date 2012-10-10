local line cwd helper sep root normal

# /home/guten master ✭ ✖ ✹ ❯ 
line='$cwd$helper $sep '
cwd='%c'
helper+=''
sep='%(!.$root.$normal)'
root='#'
normal='❯'

themerc=(
  cwd     "$fg[cyan]"
  root    "$fg_bold[red]"
  normal  "$fg_bold[green]"
  eos     "$reset_color"
  ${(q@kv)themerc}
)
themerc=("${(Q@kv)themerc}")
