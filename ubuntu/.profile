# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# export CLOJURE_EXT=$HOME/.clojure
# export PATH=$PATH:/usr/local/go/bin:~/progs/clojure-contrib/launchers/bash
export GOPATH=$HOME/gocode
#export GOROOT=/usr/local/go
export GO111MODULE=auto
export NPM_CONFIG_PREFIX=~/.npm-global

if [ -d "/usr/local/go/bin" ]; then
    PATH="$PATH:/usr/local/go/bin"
fi

if [ -d "$HOME/.config/composer/vendor/bin" ]; then
    PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$PATH:$HOME/.local/bin"
fi

export PATH=$PATH:$GOPATH/bin

# IDEA-78860 Keyboard input sometimes is blocked when IBus is active
export IBUS_ENABLE_SYNC_MODE=1

export DOTNET_CLI_TELEMETRY_OPTOUT=1
