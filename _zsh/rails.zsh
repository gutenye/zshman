# Rails 3 aliases, backwards-compatible with Rails 2.

function _bundle_command {
  if command -v bundle && [ -e "Gemfile" ]; then
    bundle exec $@
  else
    $@
  fi
}

function _rails_command () {
  if [ -e "script/server" ]; then
    ruby script/$@
  else
    ruby script/rails $@
  fi
}

alias sc='_rails_command console'
alias sd='_rails_command destroy'
alias sdb='_rails_command dbconsole'
alias sdbm='rake db:migrate db:test:clone'
alias sg='_rails_command generate'
alias sp='_rails_command plugin'
alias ss='_rails_command server'
alias ssd='_rails_command server --debugger'
alias devlog='tail -f log/development.log'

alias rspec='_bundle_command rspec'
alias cuke='_bundle_command cucumber'
