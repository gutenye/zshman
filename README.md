ZCM, Zsh Configuraton Manager
=============================

This is version 2.0 of ZCM, It's still under development.

Install

Edit	~/.vim/filetype.vim

	au! BufNewFile,BufRead ~/.zsh/completion/*   setfiletype zsh 



Website: [zcm.heroku.com](http://zcm.heroku.com). website [source code](https://github.com/zcm/zcm-website)

follow us on [Twitter](http://twitter.com/zshzcm)

It is based on oh-my-zsh, inspired  by Bundler, Vundle. see my [original thought](https://github.com/robbyrussell/oh-my-zsh/issues/465). 

* [Development Guide](https://github.com/zcm/zcm/blob/master/docs/Development_Guide.md)

* [Theme Development Guide](https://github.com/zcm/zcm/blob/master/docs/Theme_Development_Guide.md)

Install
-------

	curl https://raw.github.com/zcm/zcm-installer/master/install | zsh

it backups ~/.zshrc, now modify ~/.zcm/Pluginfile, and open a new terminal.

Overview
--------

a basic structure

	~/.zprofile
	~/.zlogin
	~/.zlogout
	~/.zshrc
	~/.zcmrc # do settings here. e.g. `zset ls_options "--ignore-backups"`
	~/.zcm
		Pluginfile # like Gemfile. e.g. `plugin core`
		plugins/
			foo/ # a foo plugin
				foo.plugin.zsh  
				zprofile # do export PATH='x' here
				zlogin
				zlogout
			local/  # put your own configuration files here
		themes/
			local/
		keymaps/
			local/
		local # shortcut: symbol link to plugins/local

the Pluginfile

	theme default.ssh.git

	keymap vim 

	plugin core
	plugin completion
	plugin aliases
	plugin cd
	plugin ls
	plugin sudo
	plugin history

	...

	plugin local # my custom configuration


**customize**

do some settings in ~/.zcmrc 

	zset ls_options "--ignore-backups" # options for ls command
	themerc = (
		cwd "$fg[red]"    # theme color setting.
	)

each plugin has an after file, a zprofile file.

	plugins/foo/
		foo.plugin.zsh
		foo.after.zsh  # add custom things here.
		zprofile   # export PATH here.

use plugins/local directory

	plugins/local/
		bar.zsh

write your own local plugin.

	plugins/foo/
		foo.plugin.zsh

Settings
--------

they are set in ~/.zcmrc. 

	zset color
	zset nocolor
	zset ls_options "--ignore-backups"

	export EDITOR="vim"  # put environment variable here.

Plugin system
-------------

plugin command

	plugin foo                       # from github.com/zcm/foo
	plugin GutenYe/foo               # from github.com/GutenYe/zcm-foo
	plugin file:///absolute/path/foo # use git from local path 
	plugin /absolute/path/foo        # symbol link from local path
	plugin local/foo                 # just use local $ZCM/plugins/foo


Theme system
------------

theme command

	theme foo           # from github.com/zcm/theme-foo
	theme GutenYe/foo   # from github.com/GutenYe/zcm-theme-foo
	theme local         # use local $ZCM/themes/local


	theme default           # normal theme
	theme default.ssh.git   # with ssh and git support

customize 

in ~/.zcmrc

	# PS1 is something like this '$cwd $git_info$git_status %(!.$root.$normal)'

	themerc=(
	  cwd      "$fg[cyan]"
		git_info "$fg[blue]"
	  root     "$fg_bold[red]"    # when you have privilege
	  normal   "$fg_bold[green]"  # you don't have privilege
	  eos      "$reset_color"
	)

	helperrc=(
		git_added     " ✚"
		git_modified  " ✹"
		git_deleted   " ✖"
		git_renamed   " ➜"
		git_unmerged  " ═"
		git_untracked " ✭"
	)

themerc defines color. helperrc defines prompt string.


Keymap
------

similar to plugin

	keymap vim # from github.com/keymap-foo


zcm command
-----------

	zcm update           # update all plugins, themes, keymaps
	zcm update foo bar   # update plugins, themes, keymaps named foo and bar

	zcm install    # change Pluginfile, then need run this.

	zcm search foo       # search all plugins, themes, keymaps named foo 

more help at `$ zcm -h`


Contributing
------------

It is a big project. Please help.

1. Join the zcm organization. If you are interested in the whole system, please join us.

2. Find one plugin and join it. You can maintaince one or two plugins.

if you want to join us, drop me an email at com_dt_gmail_et_ywzhaifei.

Other ways to help.

*	Write/improve documentation/tutorial.

* Submit any bugs/features/ideas to github issue tracker


Some rules to apply plugin into official repository.

1. For plugin

	* Not a personal used plugin.

2. For theme or keymap

	* Your theme is propular. # by github wathers. may be 20, 100 ?

	* Your theme is special.

* [a list of contributors](https://github.com/zcm/zcm/contributors)

Resources
---------

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) A community-driven framework for managing your zsh configuration

* [Bundler](https://github.com/carlhuda/bundler) Manage your application's gem dependencies with less pain 

* [Vundle](https://github.com/gmarik/vundle) is short for Vimbundle and is a Vim plugin manager.


Copyright
---------

(the MIT License)

Copyright (c) 2011 Guten

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
