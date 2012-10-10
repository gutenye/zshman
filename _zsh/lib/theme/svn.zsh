# svn info and svn status is slow.

function quick_svn_prompt_info(){ 
  [[ ! -d .svn ]] && return

  echo "${helperrc[svn_prefix]}svn$helperrc[svn_suffix]"
}

function svn_prompt_info(){
    if [[ -d .svn ]]; then
      echo "$helperrc[svn_prefix]$(svn_get_repo_name)$(svn_dirty)$helperrc[svn_suffix]"
    fi
}

function svn_get_repo_name(){
    if [ -d .svn ]; then
        svn info | sed -n 's/Repository\ Root:\ .*\///p' | read SVN_ROOT

        svn info | sed -n "s/URL:\ .*$SVN_ROOT\///p" | sed "s/\/.*$//"
    fi
}

function svn_get_rev_nr(){
    if [ -d .svn ]; then
        svn info 2> /dev/null | sed -n s/Revision:\ //p
    fi
}

function svn_dirty(){
    if [ -d .svn ]; then
        s=$(svn status 2>/dev/null)
        if [ $s ]; then
            echo "%{$themerc[svn_dirty]%}$helperrc[svn_dirty]"
        else
            echo "%{$themerc[svn_clean]%}$helperrc[svn_clean]"
        fi
    fi
}
