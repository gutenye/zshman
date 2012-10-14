# MacPorts is a package management system that simplifies the installation of software on the Mac OS X and Darwin operating systems. 
# Homepage: http://www.macports.org/

alias pc="$sudo port clean --all installed"
alias pi="$sudo port install $1"
alias psu="$sudo port selfupdate"
alias puni="$sudo port uninstall inactive"
alias puo="$sudo port upgrade outdated"
alias pup="psu && puo"
