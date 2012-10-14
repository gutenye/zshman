# Yaourt is a community-contributed wrapper for pacman which adds seamless access to the AUR, a
# Homepage: https://wiki.archlinux.org/index.php/Yaourt

alias yaconf="yaourt -C"        # Fix all configuration files with vimdiff
# Pacman - https://wiki.archlinux.org/index.php/Pacman_Tips
alias yaupg="yaourt -Syu"        # Synchronize with repositories before upgrading packages that are out of date on the local system.
alias yasu="yaourt --sucre"      # Same as yaupg, but without confirmation
alias yain="yaourt -S"           # Install specific package(s) from the repositories
alias yains="yaourt -U"          # Install specific package not from the repositories but from a file 
alias yare="yaourt -R"           # Remove the specified package(s), retaining its configuration(s) and required dependencies
alias yarem="yaourt -Rns"        # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias yarep="yaourt -Si"         # Display information about a given package in the repositories
alias yareps="yaourt -Ss"        # Search for package(s) in the repositories
alias yaloc="yaourt -Qi"         # Display information about a given package in the local database
alias yalocs="yaourt -Qs"        # Search for package(s) in the local database
# Additional yaourt alias examples
if [[ -x `which abs` ]]; then
  alias yaupd="yaourt -Sy && $sudo abs"   # Update and refresh the local package and ABS databases against repositories
else
  alias yaupd="yaourt -Sy"               # Update and refresh the local package and ABS databases against repositories
fi
alias yainsd="yaourt -S --asdeps"        # Install given package(s) as dependencies of another package
alias yamir="yaourt -Syy"                # Force refresh of all package lists after updating /etc/pacman.d/mirrorlist
