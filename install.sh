#!/bin/bash -i
sudo apt-add-repository -y ppa:chris-lea/node.js;
sudo apt-get update;
sudo apt-get -y upgrade;
sudo apt-get -y install curl git-core build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libcurl4-openssl-dev nodejs postgresql libpq-dev;
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash;
echo '
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi' >> /home/deploy/.bash_profile;
source /home/deploy/.bash_profile;
rbenv bootstrap-ubuntu-12-04;
rbenv install 2.0.0-p481;
rbenv rehash;
rbenv global 2.0.0-p481;
gem update --system;
gem install bundler;
rbenv rehash;
gem install rails;
rbenv rehash;
