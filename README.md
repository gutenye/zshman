Guten Zshman, An Advanced Zsh Configuraton Manager
======================================

|                |                                       |
|----------------|---------------------------------------|
| Homepage:      | https://github.com/GutenYe/zshman        |
| Author:	       | Guten                                 |
| License:       | GPL    |
| Documentation: | https://github.com/GutenYe/zshman/wiki   |
| Issue Tracker: | https://github.com/GutenYe/zshman/issues |
| Related Projects: | [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) |

**Features**

- Simple. <br>
  *edit ~/.zsh/pacman.zsh instead of ~/.zsh/plugins/pacman/pacman.plugin.zsh*

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

**Backup original zsh configuration files**

	$ cd ~
	$ mkdir .zshrc-bak
	$ mv .zshrc .zsh .zprofile .zshrc-bak

**Download this repository** [download](https://github.com/GutenYe/zshman/zipball/master)

	$ cp .zshrc .zsh .zprofile .zprofile_linux .zprofile_osx ~

Getting Started
---------------

**Create a plugin**

1. edit ~/.zsh/hello.zsh

	alias hello="echo 'Hello world'"

2. edit ~/.zsh/Pluginfile

	plugin hello

That's all :)

It's so simple that it does not come withy any plugins, but you can find a list of plugins at [here](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)

**Some good plugins**

- [extract](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/extract/extract.plugin.zsh)

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

Hello is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Hello is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Hello.  If not, see <http://www.gnu.org/licenses/>.
