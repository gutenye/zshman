
# print debug
#
# @example
#
#  a=(a 'b c' d)
#  pd $a                  ->  a b\ c d
#
#  typeset -A b
#  b=(a 1 b '2 3' c 4)
#  pd ${(kv)b}           -> a 1 b 2\ 3 c 4
function pd(){
  printf '%q ' $*
  printf '\n'
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
  _zset_parse name value $*

  rc+=($name $value)
}

# set value if no exists.
function zset_default(){
  _zset_parse name value $*

  rc=($name $value ${(@kv)rc})
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

## private
##

# _zset_parse name value *args
#
function _zset_parse(){
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

