setopt prompt_subst # Enable parameter, arithmentic expansion and command substitution in prompt.

# Set the default prompt theme.
PS1="%n@%m:%~%# "

# Set the GNU Screen window number.
#[[ -n "$WINDOW" ]] && SCREEN_NO="%B$WINDOW%b " || SCREEN_NO=""

# Set the default Git prompt theme.
#ZSH_THEME_GIT_PROMPT_PREFIX="git:("    # Prefix before the branch name.
#ZSH_THEME_GIT_PROMPT_SUFFIX=")"        # Suffix after the branch name.
#ZSH_THEME_GIT_PROMPT_DIRTY="*"         # Indicator to display if the branch is dirty.
#ZSH_THEME_GIT_PROMPT_CLEAN=""          # Indicator to display if the branch is clean.

# (line)
#
# @example build_prompt "%cwd %helper %end "
#
function build_prompt(){
  local line ret
  line=$1

  ret=`replace_prompt_name $line`

  # add eos color
  ret="$ret%{$themerc[eos]%}"

  # reduce more than one space into one space
  #ret=`echo $ret | sed -r 's/ +/ /g'`

  #echo '[DEBUG] prompt is' $ret > /dev/stderr
  echo $ret
}

# replace_prompt_name(line)
#
# @example
#
#   a='$cwd $helper'
#   cwd='cwd'
#   helper='$git $ssh'
#   git='git'
#   ssh='ssh'
# 
#   typeset -A themerc
#   themerc=(
#     cwd RED
#     helper BLUE
#     git GREEN
#     ssh BLACK
#   )
#
# replace_prompt_name $a
# #=> 'REDcwd BLUEGREENgit BLACKssh'
#
# I'm rescurive
function replace_prompt_name(){
  local line
  line=$1
  ret=$line

  namestr=`echo $line | grep -Eo '\\${?[a-zA-Z_]+}?' | sed -r 's/\\$\{?([a-zA-Z_]+)\}?/\1/'`
  names=("${(ps:\n:)namestr}")

  for name ($names) do
    value=${(P)name}

    # macth '$foo' not '$(foo)'
    if [[ -n `echo $value | grep '\$[^(]'` ]]; then
      eval "$name='%{$themerc[$name]%}`replace_prompt_name $value`'"
    else
      eval "$name='%{$themerc[$name]%}$value'"
    fi
  done

  eval "ret=\"$ret\""; echo $ret
}

