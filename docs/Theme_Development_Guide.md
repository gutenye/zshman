Theme Development Guide
=======================

man page 'zshmisc' at 'EXPANSION OF PROMPT SEQUENCES' section

this example's source code https://github.com/zcm/theme-default

Overview
--------

create a theme

	$ zcm new -t foo

specification file

	_.name = "GutenYe/foo"
	_.description = "a foo theme"
	_.homepage = "https://github.com/GuetnYe/zcm-theme-foo"
	_.snapshot = "url/to/snapshot"  # you must provide a snapshot url.

	
the theme file structure

	foo/
	  foo.theme.zsh
	  foo.git.zsh   # it is loaded if use `theme default.git` command.
	  foo.after.zsh
		README.md  # documentation for how to customize your theme. 

\# file foo.theme.zsh

	# prompt is /home/guten ❯ 
	local line cwd helper sep root normal

	line='$cwd$helper $sep '  # need single-quote.
	cwd='%c'
	helper+=''
	sep='%(!.$root.$normal)' # a condition. if has privilege then $root else $normal.
	root='#'
	normal='❯'

	themerc=(
		cwd     "$fg[cyan]"        # add color before $cwd. 
		root    "$fg_bold[red]"    # need double-quote. 
		normal  "$fg_bold[green]"
		eos     "$reset_color"     # eos - end of string
		${(q@kv)themerc}           # quote
	)
	themerc=("${(Q@kv)themerc}") # unquote. in order to support empty value in `themerc=(cwd '')`
		

\# file foo.git.zsh

	# prompt is master ✭ ✖ ✹ 
	require theme/git    # helper functions from  $ZCM/lib/theme/git.zsh

	local git_info git_status
	helper+='$git_info$git_status'
	git_info='$(git_prompt_info)'
	git_status='$(git_prompt_status)'

	helperrc=(
		git_added     " ✚"
		${(q@kv)helperrc}
	)
	helperrc=("${(Q@kv)helperrc}")


\# file foo.after.zsh

	PROMPT=`build_prompt $line`  # let's build the prompt now.

How it works
------------

use a variable name. clean and have semantic names.

	line='$cwd $sep' 
	line='${cwd} guten $sep'

you can add color to each variable name in themerc.

	themerc=(
		cwd  "$fg[red]"
		...
	)

then define your variable.

	cwd='hello'
	cwd='%c'
	cwd='$(git_prompt_info)'
