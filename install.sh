#!/bin/bash

# chmod +x shell.sh
# ./shell.sh

cd

# preparring rbenv, ruby, rails, nodejs
git clone git://github.com/sstephenson/rbenv.git .rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build


echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

exec $SHELL

rbenv install -v 2.1.0

rbenv global 2.1.0

echo "gem: --no-document" > ~/.gemrc

gem install bundler

gem install rails -v 4.2.6 -V

rbenv rehash

sudo yum -y install epel-release

sudo yum install nodejs

# # prepping for nginx + passenger
# yum -y update

# sudo su -c 'rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm'

# yum -y update

# yum install -y curl-devel nano sqlite-devel libyaml-devel

# sudo dd if=/dev/zero of=/swap bs=1M count=1024
# sudo mkswap /swap
# sudo swapon /swap

# gem install passenger

# # requires to choose options
# passenger-install-nginx-module



