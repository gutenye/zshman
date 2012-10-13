ZCM, A simple Zsh Configuraton Manager
======================================

This is the version 2.0 of ZCM, And it's still under development. You can find version 1.0 at [here](https://github.com/zcm/zcm)

**Features**

- Simple.
  edit ~/.zsh/git.zsh instead of ~/.zsh/plugins/git/git.plugin.zsh

- Full Control.
  you can edit any file in any way. Because it uses git branch to track updates.

- Plugin system.
  enable/disable a plugin is easy.
  
- Theme system.
  write your own theme is quite easy.

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

Install
--------

Backup origin zsh configuration files.

	$ cd ~
	$ mv .zshrc .zshrc-bak
	$ mv .zsh .zsh-bak
	$ mv .zprofile .zprofile-bak
	$ mv .zlogin .zlogin-bak
	$ mv .zlogout .zlogout-bak

Download this reposiory and extract it.

	$ cp _zshrc ~/.zshrc
	$ cp _zsh ~/.zsh
	$ cp _zprofile ~/.zprofile

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
