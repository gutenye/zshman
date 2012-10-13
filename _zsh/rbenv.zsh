#source "$ZSH/rbenv.osx.zsh"

function rb.19() {
  RBENV_VERSION=1.9.2-p290 $*
}

function rb.18() {
  RBENV_VERSION=1.8.7-p352 $*
}

function rb.jruby() {
  RBENV_VERSION=jruby-1.6.7.2 $*
}

function rb.rbx(){
  RBENV_VERSION=rbx-2.0.0-dev $*
}
