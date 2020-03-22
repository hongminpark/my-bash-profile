# my-profiles
This is my profile setting repository.

## .bash_profile
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

## .vimrc
```bash
:syntax on
set autoindent
set cindent
set nu
set showmatch
set paste
set tabstop=4
set shiftwidth=4
set textwidth=120
```
