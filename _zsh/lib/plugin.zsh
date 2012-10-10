# zsh_init_plugin(path)
#
# @example
# 
#   plugin foo  # load ~/.zsh/foo.zsh
function zsh_init_plugin(){
  source "$ZSH/$1.zsh"
}

# theme default.ssh.rvm.git 
#
function zsh_init_theme(){
  local pathdesc name dir names helpers
  pathdesc=$1
  name=`basename $pathdesc`
  pathdesc=${pathdesc%%.*} 
  names=("${(s:.:)name}")
  name=$names[1]
  helpers=($names[2,-1])

  dir="$ZSH/themes/$name"
  if [[ $name = "random" ]]; then
    themes=($ZSH/themes/*)
    theme_index=${#themes[@]}
    (( theme_index=((RANDOM % theme_index) + 1) ))
    dir="${themes[$theme_index]}"
  fi

  eval "
    function __theme__(){
      `cat  $dir/$name.theme.zsh`
      `for helper ($helpers) cat $dir/$name.$helper.zsh`
      `cat $dir/$name.after.zsh 2>/dev/null`
    }
  "

  # echo "[DEBUG] `which __theme__`" 2>/dev/null
  __theme__
}

function zsh_init_keymap(){
  source "$ZSH/keymaps/$1.keymap.zsh"
}

