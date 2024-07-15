export EDITOR="/usr/bin/nano"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}"

export GOPATH=$HOME/gocode
export GO111MODULE=auto

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$GOPATH/bin" ]; then
    PATH="$GOPATH/bin:$PATH"
fi

if [ -d "$HOME/.composer/vendor/bin" ]; then
    PATH="$PATH:$HOME/.composer/vendor/bin"
fi

export PATH
