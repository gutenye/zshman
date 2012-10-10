# require a file.
# use $loadpath
#
# zsh_require tagen/foo  #=> foo.zsh
# zsh_require /absolute/path
#
function zsh_require(){
  local pathdesc path1
  pathdesc=$1

  if [[ $pathdesc =~ "^/" ]]; then
    [[ -e $pathdesc ]] && path1=$pathdesc
  else
    [[ $pathdesc =~ ".zsh$" ]] && pathdesc=$pathdesc || pathdesc+=".zsh"
    for dir in $loadpath; do
      if [[ -e $dir/$pathdesc ]]; then
       path1=$dir/$pathdesc
       break
     fi
    done
  fi

  if [[ -z $path1 ]]; then
    echo "Error: can't find file -- $1"
    return
  fi

  eval "function __require__(){ $(cat $path1) }"
  __require__
}

# zset a zcm option.
#
# == zset
#
#   zset lscolor
#   zset nolscolor
#   zset name "foo"
#
# == get
#
#  $rc[key]
#
function zset(){
  zset_parse name value $*

  rc+=($name $value)
}

# not overwrite exsiting value.
function zset_default(){
  zset_parse name value $*

  rc=($name $value ${(@kv)rc})
}

# private
#
# zset_parse name value *args
#
function zset_parse(){
  local  __name=$1
  local  __value=$2
  shift; shift

  name=$1
  value=$2
  
  if [[ $name =~ "^no" ]]; then
    name=$name[3,-1]
    value=false
  elif [[ -z $value ]]; then
    value=true
  fi

  eval $__name=\$name
  eval $__value=\$value
}


# used in Pluginfile
function plugin(){
  zcm_plugins=($zcm_plugins $1)
}

function theme(){
  zcm_themes=($zcm_themes $1)
}

function keymap(){
  zcm_keymaps=($zcm_keymaps $1)
}
