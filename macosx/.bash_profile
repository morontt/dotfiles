export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql93/bin:/usr/local/go/bin:$HOME/bin:$HOME/.composer/vendor/bin:$PATH

export GOPATH=$HOME/gocode
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_55.jdk/Contents/Home

source ~/.git-prompt.sh

#color for terminal
export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u@\h \[\033[01;36m\]\w\[\033[33m\]\$(__git_ps1 ' git:(%s)')\n\[\033[01;35m\]\$ \[\033[00m\]"

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

alias ll="ls -ahl"
alias apache_start="sudo /opt/local/apache2/bin/apachectl start"
alias apache_stop="sudo /opt/local/apache2/bin/apachectl stop"
alias apache_restart="sudo /opt/local/apache2/bin/apachectl restart"
alias mysql_start="sudo /opt/local/share/mysql5/mysql/mysql.server start"
alias mysql_stop="sudo /opt/local/share/mysql5/mysql/mysql.server stop"
