case "$OSTYPE" in
  darwin*)  ZSH_OS="osx" ;;
  linux*)   ZSH_OS="linux" ;;
esac
export ZSH_OS

[[ -e "$HOME/.zprofile_$ZSH_OS" ]] && source "$HOME/.zprofile_$ZSH_OS"

export PATH="$HOME/bin:$PATH"
