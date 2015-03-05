[[ $(id -u) -eq 0 ]] && sudo="" || sudo="sudo"

source "$HOME/.zprofile"
source "$HOME/.zprofile_$OS"
source "$ZSH/zsh.completion.zsh"

# theme configuration
#themerc=(
#  cwd      "$fg[cyan]"
#  git_info "$fg[blue]"
#  root     "$fg_bold[red]"
#  normal   "$fg_bold[green]"
#  eos      "$reset_color"
#)
#
#helperrc=(
#  git_added     " ✚"
#  git_modified  " ✹"
#  git_deleted   " ✖"
#  git_renamed   " ➜"
#  git_unmerged  " ═"
#  git_untracked " ✭"
#)

# add your configuration here
alias hello="$sudo echo 'auto sudo :)'"

# must at the end of file
#source "$ZSH/zsh.correct.zsh"
source "$ZSH/lib/zshrc.zsh"
