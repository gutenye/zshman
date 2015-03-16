Guten Zshman, An Advanced Zsh Configuraton Manager
======================================

|                |                                       |
|----------------|---------------------------------------|
| Homepage:      | https://github.com/GutenYe/zshman        |
| Author:	       | Guten                                 |
| License:       | GPL    |
| Documentation: | https://github.com/GutenYe/zshman/wiki   |
| Issue Tracker: | https://github.com/GutenYe/zshman/issues |
| Similar Projects: | [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) |

**Features**

- Simple. <br>
  *Does not add any configurations to existng ~/.zshrc*

- Full Control. <br>
  *you can add/modify/remove any file in any way.*

- Plugin system. <br>
  *enable/disable a plugin is easy.*

- Theme system. <br>
  *write your own theme is quite easy.*

- Auto sudo. <br>
  *Automatically prepend the `sudo` before a command*

Install
-------

```
$ Backup existing zsh configurations
$ mv ~/.zshrc ~/.zshrc-bak
$ mv ~/.zprofile ~/.zprofile-bak
$ mv ~/.zsh ~/.zsh-bak

$ git clone https://github.com/GutenYe/zshman ~/.zsh/zshman
$ cp ~/.zsh/zshman/zprofile ~/.zprofile
$ cp ~/.zsh/zshman/zshrc ~/.zshrc
$ mkdir -p ~/.zsh/{disabled,completion}  ~/bin/completion-zsh
```

Getting Started
---------------

**Enable a plugin**

```
$ cp ~/.zsh/zshman/zsh/git.zsh ~/.zsh
```

**Disable a plugin**

```
$ mv ~/.zsh/git.zsh ~/.zsh/disabled
```

**Edit or Create a plugin**

```
$ edit ~/.zsh/git.zsh
```

**Enable a cmdline util**

A cmdline util is not a plugin, you can still use it if you switch to bash shell.

```
$ ln -s ~/.zsh/zshman/bin/extract ~/bin
```

You can find more plugins at [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)

How it Works
-----------

**Structure**

```
~/.zsh/zshman/
  zsh/
    lib/
    themes/
    keymaps/
  bin/
   completion-zsh/

~/.zsh/              # Structure follows ~/zshman/zsh, it has higher priority than ~/zshman/zsh, so anything copied from ~/zshman/zsh just works.
  themes/
  keymaps/
  completion/
  disabled/
  <plugin>.zsh
```

**View what has changed since last time you git pull-ed**

It uses [meld](http://meldmerge.org) GUI diff tool

```
$ git fetch
$ git difftool -g -d -t meld ..origin/master
```

Read more at [Documentations](https://github.com/GutenYe/zshman/wiki).

Development
===========

Follow [Development Documentation](https://github.com/GutenYe/zshman/wiki#Development Documentation)

Contributing
------------

* Submit any bugs/features/ideas to github issue tracker.

Please see [Contibution Guide](https://github.com/GutenYe/zshman/blob/master/CONTRIBUTING.md).

Thanks to all [contributors](https://github.com/GutenYe/zshman/contributors).

Copyright
---------

Copyright 2012-2015 Guten Ye

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
