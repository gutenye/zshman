local line cwd helper sep root normal

# /home/guten master ✭ ✖ ✹ ❯ 
line='$bol$cwd$helper $sep $eol'
cwd='%c'
bol=''
helper=''
eol=''
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
