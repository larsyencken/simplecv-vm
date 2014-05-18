#!/bin/bash -e

if [ ! -x /usr/bin/curl ]; then
  sudo apt-get update
  sudo apt-get install -y curl
fi
curl -s "https://raw.githubusercontent.com/larsyencken/marelle/master/bootstrap_global.sh" | bash

if [ ! -d marelle-deps ]; then
  # get some deps
  git clone https://github.com/larsyencken/marelle-deps
fi

marelle meet \
  simplecv \
  python-recommended \
  vim \
  dotvim
