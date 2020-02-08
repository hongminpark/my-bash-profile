# my-bash-profile
This is my '.bash_profile' setting.

```bash
# Git branch in prompt. (20200120)
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\e[34;1m\]\u \[\e[37;2;3m\]\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# LScolors (20200208)
# Refer from 'http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html'
export CLICOLOR=1
export LSCOLORS=GxFxFxFxCxegedabagaced

# Aliases
alias ll='ls -alrt'
```


looks like
```console
user workspace $ ls -alrt
total 10552
drwxr-xr-x@ 16 user  staff      512  1  7 14:56 apache-tomcat-8.5.50
drwxr-xr-x   7 user  staff      224  1  9 17:57 git-project
drwxr-xr-x   3 user  staff       96  1  9 18:06 prtest
drwxr-xr-x  14 user  staff      448  1 16 16:39 menus
drwxr-xr-x  14 user  staff      448  1 18 18:24 lectures
drwxr-xr-x   9 user  staff      288  1 26 15:35 iterm
drwxr-xr-x   7 user  staff      224  1 26 15:38 git-study
```
