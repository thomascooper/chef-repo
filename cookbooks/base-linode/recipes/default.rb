#
# Cookbook Name:: base-linode
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute "fixhost" do
  command "echo 'wwi_node' > /etc/hostname"
  command "hostname -F /etc/hostname"
end

include_recipe "git"
include_recipe "hostnames"

