#
# Cookbook Name:: base-linode
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "git"
include_recipe "hostnames"
include_recipe "timezone"

execute "Install Longview" do
  if node[:base_linode].attribute?("longview_id")
    id = node["base_linode"]["longview_id"]
    command "curl -s https://lv.linode.com/#{id} | sudo bash"
  end
end
