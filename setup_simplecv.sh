#!/bin/bash -e
#
#  setup_simplecv.sh
#
#  Install the SimpleCV package and the IPython notebook on Ubuntu 14.04.
#

APT_UPDATED=0

function has_exec() {
  which "$1" &>/dev/null
}

function has_python_package() {
  python -c "import $1" &>/dev/null
}

function has_apt_package() {
  dpkg -l | grep -q "^$1$"
}

function apt_install() {
  if [ $APT_UPDATED -eq 0 ]; then
    sudo apt-get update
    APT_UPDATED=1
  fi

  sudo apt-get install -y "$1"
}

function apt_check_install() {
  for pkg in "$@"; do
    has_apt_package "$pkg" || apt_install "$pkg"
  done
}

function install_simplecv() {
  apt_check_install \
    build-essential \
    ipython-notebook \
    python-dev \
    python-numpy \
    python-opencv \
    python-pip \
    python-pygame \
    python-scipy \

  sudo pip install SimpleCV
}

has_python_package SimpleCV || install_simplecv
