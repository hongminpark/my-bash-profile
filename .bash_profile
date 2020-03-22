# NVM settings (20200115)
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

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

# Export path for JDK 13
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-13.0.1.jdk/Contents/Home
#export PATH=$JAVA_HOME/bin:$PATH

# Export path for JDK 11
#export JAVA_HOME=/usr/local/Cellar/openjdk@11/11.0.5+10_2
#export PATH=$PATH:$JAVA_HOME/bin

# Export path for JdK 8
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH="$JAVA_HOME/bin:$PATH"

# Export Path for VPN
export VPN_HOME=~/workspace/vpn
export PATH=$PATH:$VPN_HOME

# Export path for Node
export PATH="/usr/local/opt/node@10/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/node@10/lib"
export CPPFLAGS="-I/usr/local/opt/node@10/include"
