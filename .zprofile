case "$OSTYPE" in
  darwin*)  OS="osx" ;;
  linux*)   OS="linux" ;;
esac
export OS

export ZSH="$HOME/.zsh"
source "$ZSH/lib/zprofile.zsh"
