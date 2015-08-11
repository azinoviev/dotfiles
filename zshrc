export PATH=$HOME/local/bin:/usr/local/bin:$PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim

alias tmux="TERM=screen-256color-bce tmux -2"

# pyenv
export PATH="$HOME/.pyenv/bin:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
