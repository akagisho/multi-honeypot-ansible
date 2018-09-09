#!/usr/bin/env bash

set -e

VER=$1

cd $HOME

test -x .pyenv/bin/pyenv \
  || /usr/local/bin/pyenv-setup.sh

.pyenv/bin/pyenv versions | grep -Fq $VER \
  || .pyenv/bin/pyenv install $VER \

.pyenv/bin/pyenv version | grep -Fq $VER \
  || (.pyenv/bin/pyenv global $VER \
  && echo switched)

.pyenv/shims/pip install --upgrade pip
.pyenv/shims/pip install --upgrade setuptools
