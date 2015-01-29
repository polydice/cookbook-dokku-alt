#
# Cookbook Name:: dokku-alt
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_package "apt-transport-https"

apt_repository "docker" do
  uri          "https://get.docker.io/ubuntu"
  distribution "docker"
  components   ["main"]
  keyserver    "keyserver.ubuntu.com"
  key          "36A1D7869245C8950F966E92D8576A8BA88D21E9"
end

apt_repository "dokku-alt" do
  uri          "https://dokku-alt.github.io/dokku-alt"
  components   ["/"]
  keyserver    "keys.gnupg.net"
  key          "EAD883AF"
end

%w(dokku-alt ruby ruby-sinatra).each do |pkg|
  apt_package pkg
end
