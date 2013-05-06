#!/bin/bash -e

# install marelle
sudo apt-get update
sudo apt-get install -y curl git swi-prolog-nox
git clone https://bitbucket.org/larsyencken/marelle /usr/local/marelle

cat >/usr/local/bin/marelle <<EOF
#!/bin/bash
exec swipl -q -t main -s /usr/local/marelle/marelle.pl "\$@"
EOF
chmod a+x /usr/local/bin/marelle

# get some deps
git clone https://bitbucket.org/larsyencken/marelle-deps

marelle meet \
  simplecv \
  python-recommended \
  vim \
  dotvim
