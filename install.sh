#!/bin/bash -i
sudo apt-add-repository -y ppa:chris-lea/node.js;
sudo apt-get update;
sudo apt-get -y upgrade;
sudo apt-get -y install vim screen curl git-core build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libcurl4-openssl-dev nodejs postgresql postgresql-contrib libpq-dev;
sudo -u postgres createuser -d -r -s deploy;
curl https://raw.githubusercontent.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash;
echo '
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi' >> /home/deploy/.bash_profile;
. /home/deploy/.bash_profile;
rbenv bootstrap-ubuntu-12-04;
curl https://raw.githubusercontent.com/ryanloughlin25/test_server_setup/master/install_ruby_rails.sh | bash;
