#export TERM=xterm

export PATH=$HOME/local/bin:/usr/local/bin:$PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim

alias tmux="TERM=screen-256color-bce tmux"

# pyenv
export WORKON_HOME=$HOME/.virtualenvs
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="${HOME}/.pyenv"
export PATH="${PYENV_ROOT}/bin:${PATH}"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv virtualenvwrapper
