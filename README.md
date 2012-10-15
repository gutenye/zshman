ZCM, A simple Zsh Configuraton Manager
======================================

|                |                                       |
|----------------|---------------------------------------|
| Homepage:      | https://github.com/GutenYe/zcm        |
| Author:	       | Guten                                 |
| License:       | MIT License                           |
| Documentation: | https://github.com/GutenYe/zcm/wiki   |
| Issue Tracker: | https://github.com/GutenYe/zcm/issues |

**Note: It's still under early development.** 

This is the version 2.0 of ZCM, you can find version 1.0 at [here](https://github.com/zcm/zcm).

**Features**

- Simple. <br>
  *edit ~/.zsh/git.zsh instead of ~/.zsh/plugins/git/git.plugin.zsh*

- Full Control. <br>
  *you can add/modify/remove any file in any way. It uses a seperate git branch to track updates.*

- Plugin system. <br>
  *enable/disable a plugin is easy.*
  
- Theme system. <br>
  *write your own theme is quite easy.*

Getting Started
---------------

ZCM Layout

	~/.zshrc
	~/.zsh/
		Pluginfile         # enable/disable plugin here
		foo.zsh            # a foo plugin
		foo.profile.zsh    # load by ~/.zprofile

		themes/            # theme files
		keymaps/           # keymap files

		completion/        # all completions file are putted here. e.g. _foo
		bin/               # user made scripts

the `~/.zsh/Pluginfile` file

	theme default.rbenv.ssh.git	
	keymap vim

	plugin git
	plugin ruby

That's all :) 

Read more about it at [Documentation](https://github.com/GutenYe/zcm/wiki).

Install
--------

**Backup original zsh configuration files**

	$ cd ~
	$ mv .zshrc .zshrc-bak
	$ mv .zsh .zsh-bak
	$ mv .zprofile .zprofile-bak

**Download this repository**

	$ cp _zshrc ~/.zshrc
	$ cp _zsh ~/.zsh
	$ cp _zprofile ~/.zprofile

**Syntax Highlight in vim**

Edit `~/.vim/filetype.vim`

	au! BufNewFile,BufRead ~/.zsh/completion/*   setfiletype zsh 

Update
------

**Setup Update Environment**

	$ git clone git://github.com/GutenYe/zcm.git ~/.zsh/update

	! install meld
	# pacman -S meld                    (ArchLinux)
	# apt-get install meld              (Ubuntu)

	$ git config --global diff.guitool meld
	$ git config --global difftool.prompt false

**Preform An Update**

	$ cd ~/.zcm/update
	$ git fetch origin

	$ git difftool -g -d ..origin/master
	> here you can view new updates in meld. 
	> find interesting things and add them to you ZSH configuration files.

	$ git merge origin/master 

[meld](http://meldmerge.org): a visual diff and merge tool.


Customize a Theme
-----------------

In ~/.zshrc

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

Development
===========

Follow [Development Documentation](https://github.com/GutenYe/zcm/wiki#Development Documentation)

Contributing
------------

* Submit any bugs/features/ideas to github issue tracker.

Please see [Contibution Documentation](https://github.com/GutenYe/zcm/blob/master/CONTRIBUTING.md).

A list of [Contributors](https://github.com/GutenYe/zcm/contributors).

Resources
---------

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh): A community-driven framework for managing your zsh configuration.

Copyright
---------

(the MIT License)

Copyright (c) 2012 Guten

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
