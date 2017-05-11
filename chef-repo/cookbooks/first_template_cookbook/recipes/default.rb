#
# Cookbook Name:: first_template_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service "sshd" do 
	action :nothing
end

template '/etc/sudors' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['first_template_cookbook']['sudo']['groups'],
    sudoers_users: node['first_template_cookbook']['sudo']['users'],
    passwordless: node['first_template_cookbook']['passwordless']

  })

 notifies :restart, 'service[sshd]', :before
end

