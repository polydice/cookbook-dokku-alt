#
# Cookbook Name:: dokku-alt
# Recipe:: installer
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "dokku-alt"

script "dokku-installer" do
  interpreter "bash"
  code "ruby /usr/local/share/dokku-alt/contrib/dokku-installer.rb onboot"
  user "root"
end

