source "$ZSH/lib/theme/git.zsh"

local git_info git_status
helper+='$git_info$git_status'
git_info='$(git_prompt_info)'
git_status='$(git_prompt_status)'

helperrc=(
  git_prefix    " "
  git_suffix    ""

  git_dirty     ""
  git_clean     ""
  git_added     " ✚"
  git_modified  " ✹"
  git_deleted   " ✖"
  git_renamed   " ➜"
  git_unmerged  " ═"
  git_untracked " ✭"
  ${(q@kv)helperrc}
)
helperrc=("${(Q@kv)helperrc}")

themerc=(
  git_info      "$fg[blue]"
  git_status    ""

  git_dirty     ""
  git_clean     ""
  git_added     "$fg[green]"
  git_modified  "$fg[blue]"
  git_deleted   "$fg[red]"
  git_renamed   "$fg[magenta]"
  git_unmerged  "$fg[yellow]"
  git_untracked "$fg[cyan]"
  ${(q@kv)themerc}
)
themerc=("${(Q@kv)themerc}")
