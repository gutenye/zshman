default theme for zcm

based on [Sorin Ionescu's theme](https://github.com/sorin-ionescu/oh-my-zsh/blob/master/themes/sorin.zsh-theme)

result

	/home/user master ✭ ✖ ✹ ❯

this snapshot is wrong. 
![snapshot](https://raw.github.com/zcm/theme-default/master/snapshot.png)


normal prompt is `'$cwd$helper $sep '`

	cwd ::= '%c'

	helper ::=  for git, ssh ...

	sep ::= if has privilege
	           '$root'
          else
	           '$normal'

	root ::= '#'

	normal ::= '❯'


prompt with git is `helper+='$git_info$git_status'`

	git_info   ::= '$(git_prompt_info)'

	git_status ::= '$(git_prompt_status)'


prompt with ssh is `helper+='$ssh'`

	ssh ::= '$(ssh_prompt_info)'


prompt with rvm is `helper+='$rvm'`

	rvm ::= '$(rvm_prompt_info)'
	

promt with svn `helper+='$svn'`

	svn ::= '$(svn_prompt_info)'
