#!/usr/bin/env bash

set -e

cd $HOME

test -d .pyenv \
  || git clone https://github.com/yyuu/pyenv.git .pyenv

grep -q PYENV_ROOT .bash_profile \
  || (echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile \
  && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile \
  && echo 'eval "$(pyenv init -)"' >> ~/.bash_profile \
  && source ~/.bash_profile \
  && echo installed pyenv)

#test -d .pyenv/plugins/pyenv-virtualenv \
#  || git clone https://github.com/yyuu/pyenv-virtualenv.git .pyenv/plugins/pyenv-virtualenv
#
#grep -q virtualenv-init .bash_profile \
#  || (echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile \
#  && echo installed virtualenv-init)
