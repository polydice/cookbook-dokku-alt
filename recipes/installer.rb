include_recipe "dokku-alt"

script "dokku-installer" do
  interpreter "bash"
  code "ruby /usr/local/share/dokku-alt/contrib/dokku-installer.rb onboot"
  user "root"
end

