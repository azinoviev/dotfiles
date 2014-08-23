OS=`uname`

# Java
if [[ "{$OS}" == "Darwin" ]]
then
    export JDK_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home
else
    export JDK_HOME=$HOME/local/jdk1.8.0_20
fi
export JAVA_HOME=$JDK_HOME
export JRE_HOME=$JDK_HOME/jre

export PATH=$HOME/.cabal/bin:$HOME/local/bin:$JDK_HOME/bin:$JRE_HOME/bin:$PATH

if [[ "{$OS}" == "Linux" ]]
then
    export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
    export PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig:$PKG_CONFIG_PATH
fi

export TERM=xterm

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim

# pyenv
export WORKON_HOME=$HOME/.virtualenvs
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="${HOME}/.pyenv"

if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi
pyenv virtualenvwrapper

# vim
if [[ "{$OS}" == "Darwin" ]]
then
    alias vim="reattach-to-user-namespace vim"
fi

alias viml='SOLARIZED_LIGHT=1 vim'

# haskell / os x
if [[ "{$OS}" == "Darwin" ]]
then
    export PATH=$HOME/Library/Haskell/bin:$PATH
fi
