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
  local pathdesc name dir names all_helpers helpers
  pathdesc=$1
  name=`basename $pathdesc`
  pathdesc=${pathdesc%%.*}
  names=("${(s:.:)name}")
  name=$names[1]
  all_helpers=($names[2,-1])

  dir="$ZSH/themes/$name"
  if [[ $name = "random" ]]; then
    themes=($ZSH/themes/*)
    theme_index=${#themes[@]}
    (( theme_index=((RANDOM % theme_index) + 1) ))
    dir="${themes[$theme_index]}"
  fi

  # only load exists helpers
  helpers=()
  for helper ($all_helpers) do
    if [[ ${+commands[$helper]} == 1 ]]; then
      helpers=($helpers $helper)
    fi
  done

  eval "
    function __theme__(){
      `cat  $dir/theme.zsh`
      `for helper ($helpers) cat $dir/$helper.zsh`
      `cat $dir/theme.after.zsh 2>/dev/null`
    }
  "

  # echo "[DEBUG] `which __theme__`" 2>/dev/null
  __theme__
}

function zsh_init_keymap(){
  source "$ZSH/keymaps/$1.keymap.zsh"
}
