Development Guide
=================

* don't use git commint --amend. it breaks update.

* don't change Pluginfile. it breaks update.

settings

	zset color                         # $rc[color] is true
	zset nocolor                       # $rc[color] is false
	zset ls_options "--classify"       # $rc[ls_options] is "--classify"
	
Create a new plugin
-------------------

	$ zcm new foo

about the specification file. foo.zcm

	_.name = "GutenYe/foo"  # required
	_.description = "x"  # required
	_.homepage = "x"  # required

release or update your plugin.

	$ cd PLUGIN_DIR
	# need git push to github.com
	$ zcm release # it reads specification file from github.com, not from local.

file structure

	foo/
		_foo            # completion file
		foo.plugin.zsh  # main file
		lib.zsh         # some lib functions
		foo.after.zsh   # sourced after foo.plugin.zsh
		zprofile        # call by ~/.zprofile

can use require

	require foo/lib   # load foo/lib.zsh

Note:

don't use compdef. use completion file \_foo instead. compinit is called after all plugins is sourced. so compdef is not defined when source foo.plugin.zsh 


Set up test environment 
-----------------------

read [zcm/test/README.md](https://github.com/zcm/zcm/blob/master/test/README.md)


Completion
----------

man page 'zshcompsys'

examples: /usr/share/zsh/functions/Completion

`compinit -i` it ignore inscure directory, so plugin directory mode need 755. more infomation at man page 'zshcompsys' in 'For security reasons' place.


Some note about redirect
------------------------

once you make your plugin into official repo. then 'GutenYe/foo' becomes 'zcm/foo'.  you need create a redirect file in 'GutenYe/foo'

	# file redirect
	GutenYe/foo foo
		
next time, user update the foo plugin, it will redirect to new place.


Code Style Guide
----------------

* use double quote not single quote for string. # "foo"

* check a variable exists.  `[[ ${+foo} == 1 ]]`

