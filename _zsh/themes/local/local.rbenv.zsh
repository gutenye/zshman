local rbenv
bol+='$rbenv'
rbenv='$(rbenv_version)'

function rbenv_version(){
  version=`rbenv version | awk '{print $1}'`
  case $version in
    system ) echo "" ;;
    1.8.7* ) echo "㈧" ;;
    * ) echo "(${version})" ;;
  esac
}
