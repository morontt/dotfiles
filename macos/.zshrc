alias ll="ls -ahlF"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function git-score () {
    git log | grep Author | sort | uniq -ci | sort -nr
}

function mkcd () {
    mkdir -p $1 && cd $1
}

function ga () {
    git add $@ && git status
}
