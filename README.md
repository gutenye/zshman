ZCM, An Advanced Zsh Configuraton Manager
======================================

|                |                                       |
|----------------|---------------------------------------|
| Homepage:      | https://github.com/GutenYe/zshman        |
| Author:	       | Guten                                 |
| License:       | MIT License                           |
| Documentation: | https://github.com/GutenYe/zshman/wiki   |
| Issue Tracker: | https://github.com/GutenYe/zshman/issues |
| Related Projects: | [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) |

**Features**

- Simple. <br>
  *edit ~/.zsh/git.zsh instead of ~/.zsh/plugins/git/git.plugin.zsh*

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

You can find a list of plugins at [here](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins)

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

A list of [Contributors](https://github.com/GutenYe/zshman/contributors).

Copyright
---------

(the MIT License)

Copyright (c) 2012-2015 Guten

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
