# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# load aliases, functions
if [ -f ~/.bash_aliases ]; then
  . "/home/user/.bash_aliases"
fi

# load rust environment
if [ -f "$HOME/.cargo/env" ]; then
  . "$HOME/.cargo/env"
fi

# set some environment variables
PATH="/opt/nvim-linux-x86_64/bin:$PATH"
VCPKG_ROOT=/home/user/.vcpkg
PATH=$VCPKG_ROOT:$PATH
