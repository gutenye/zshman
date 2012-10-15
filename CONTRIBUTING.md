Follow [Plugin Development Guide](https://github.com/GutenYe/zcm/wiki/Plugin-Development-Guide) and [Theme Development Guide](https://github.com/GutenYe/zcm/wiki/Theme-Development-Guide)

We love pull requests. Here's a quick guide:

1. Fork the repo.

2. Create a topic branch from where you want to base your work. 

3. Push to your fork and submit a pull request.

4. Follow the Coding Style Guide below.

Coding Style Guide
==================

Formatting
----------

- Use 2 space indent, no tabs.

Naming
-----

- Use snake_case name convention.

- names prefixed with _ for private functions or variables.

Syntax
------

- Prefer double quote over single quote.

- Prefer `source lib.zsh` over `. file.zsh`

- function: always use 'function' keyword.


	function foo() {
		...
	}

- if-then statments shoule be on one line.


	if [[ -f $1 ]]; then
		...
	fi

- alias: alawys use quotes at right side.


	alias foo="ls"

- Always use $sudo when you need to use sudo.


	alias gem="$sudo gem"
