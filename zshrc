export PATH=$HOME/local/bin:/usr/local/bin:$PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export LESS="-XFRS"

alias tmux="TERM=screen-256color-bce tmux -2"
alias td="tree -d -L 1"
alias td1="tree -d -L 1"
alias td2="tree -d -L 2"

alias vi="vim -u $HOME/.dotfiles/vimrc_simple"

# pyenv
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
