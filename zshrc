export JDK_HOME=$HOME/local/jdk1.8.0_05
export JAVA_HOME=$JDK_HOME
export JRE_HOME=$JDK_HOME/jre

export PATH=$HOME/.cabal/bin:$HOME/local/bin:$JDK_HOME/bin:$JRE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$HOME/local/lib/pkgconfig:$PKG_CONFIG_PATH

export WORKON_HOME=$HOME/.virtualenvs
source $HOME/local/bin/virtualenvwrapper.sh

export TERM=xterm

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim

# for mysqlsandbox
export PERL5LIB=$HOME/local/lib/perl5/site_perl/5.8.8:$HOME/local/share/perl/5.18.2

# pyenv
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="${HOME}/.pyenv"

if [ -d "${PYENV_ROOT}" ]; then
  export PATH="${PYENV_ROOT}/bin:${PATH}"
  eval "$(pyenv init -)"
fi

alias viml='SOLARIZED_LIGHT=1 vim'

