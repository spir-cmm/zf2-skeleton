#!/bin/bash
if [ -d '/opt/vagrant_ruby/lib/ruby/gems/1.8/gems/chef-10.14.2' ]; then
  echo "Updating Chef Solo..."
  apt-get install make --yes
  time gem install -no-rdoc --no-ri --version 11.4.2 chef
  rm -Rf /opt/vagrant_ruby/lib/ruby/gems/1.8/gems/chef-10.14.2
else
  echo "Skipping Chef Solo update."
fi