# Renders the name of the current branch.
# 
# git_prompt_info()
#
# @return 'master $dirty'
function git_prompt_info() {
  local branch=$(git_current_branch)
  if [[ -n "$branch" ]]; then
    echo "${helperrc[git_prefix]}${branch}$(parse_git_dirty)${helperrc[git_suffix]}"
  fi
}

# Gets the current branch.
#
# git_current_branch()
# 
# @return "master"
function git_current_branch() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n "$ref" ]]; then
    echo "${ref#refs/heads/}"
  fi
}

# Checks if the working tree is dirty.
#
# parse_git_dirty()
#
# @return '$dirty'
function parse_git_dirty() {
  if [[ -n $(git status -s 2> /dev/null) ]]; then
    echo "${helperrc[git_dirty]}"
  else
    echo "${helperrc[git_clean]}"
  fi
}

# Checks if there are commits ahead from remote.
#
# git_prompt_ahead()
#
# @return '$ahead'
function git_prompt_ahead() {
  if $(echo "$(git log origin/$(git_current_branch)..HEAD 2> /dev/null)" | grep '^commit' &> /dev/null); then
    echo "${helperrc[git_ahead]}"
  fi
}

# Formats the prompt string for current git commit short SHA.
#
# git_prompt_short_sha()
#
# @return "2cf6af9"
function git_prompt_short_sha() {
  local sha=$(git rev-parse --short HEAD 2> /dev/null)
  if [[ -n "$sha" ]]; then
    echo "${sha}"
  fi
}

# Formats the prompt string for current git commit long SHA.
#
# git_prompt_long_sha()
#
# @return "dae86e1950b1277e545cee180551750029cfe735"
function git_prompt_long_sha() {
  local sha=$(git rev-parse HEAD 2> /dev/null)
  if [[ -n "$sha" ]]; then
    echo "${sha}"
  fi
}

# Gets the status of the working tree.
#
# git_prompt_status()
#
# @return '$untracked $added $modified ..'
function git_prompt_status() {
  local indicators line untracked added modified renamed deleted
  while IFS=$'\n' read line; do
    if [[ "$line" =~ '^\?\? ' ]]; then
      [[ -n $untracked ]] && continue || untracked='yes'
      indicators="%{$themerc[git_untracked]%}${helperrc[git_untracked]}${indicators}"
    fi
    if [[ "$line" =~ '^(((A|M|D|T) )|(AD|AM|AT|MM)) ' ]]; then
      [[ -n $added ]] && continue || added='yes'
      indicators="%{$themerc[git_added]%}${helperrc[git_added]}${indicators}"
    fi
    if [[ "$line" =~ '^(( (M|T))|(AM|AT|MM)) ' ]]; then
      [[ -n $modified ]] && continue || modified='yes'
      indicators="%{$themerc[git_modified]%}${helperrc[git_modified]}${indicators}"
    fi
    if [[ "$line" =~ '^R  ' ]]; then
      [[ -n $renamed ]] && continue || renamed='yes'
      indicators="%{$themerc[git_renamed]%}${helperrc[git_renamed]}${indicators}"
    fi
    if [[ "$line" =~ '^( D|AD) ' ]]; then
      [[ -n $deleted ]] && continue || deleted='yes'
      indicators="%{$themerc[git_deleted]%}${helperrc[git_deleted]}${indicators}"
    fi
    if [[ "$line" =~ '^UU ' ]]; then
      [[ -n $unmerged ]] && continue || unmerged='yes'
      indicators="%{$themerc[git_unmerged]%}${helperrc[git_unmerged]}${indicators}"
    fi
  done < <(git status --porcelain 2> /dev/null)
  echo $indicators
}
