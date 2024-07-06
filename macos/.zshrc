export CLICOLOR=1

alias ll="ls -ahl"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.git-prompt.sh ]; then
   . ~/.git-prompt.sh
fi

case $TERM in
  xterm-color |\
  xterm-256color ) export color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
  setopt PROMPT_SUBST ; PS1=$'%{\e[1;32m%}%n@%m%{\e[00m%} %~%{\e[1;95m%}$(__git_ps1 " \xE2\x8E\x87  [%s]")%{\e[00m%} %#\n'
else
  setopt PROMPT_SUBST ; PS1=$'%n@%m %~$(__git_ps1 " \xE2\x8E\x87  [%s]") %#\n'
fi
unset color_prompt

function git-score () {
    git log | grep Author | sort | uniq -ci | sort -nr
}

function mkcd () {
    mkdir -p $1 && cd $1
}

function ga () {
    git add $@ && git status
}
