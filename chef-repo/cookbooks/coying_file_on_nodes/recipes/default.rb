#
# Cookbook Name:: coying_file_on_nodes
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file '/root/config.txt' do
  source 'config.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


file '/root/index.php' do
  content '<html>This is a new HTMl file for testing .</html>'
  owner 'root'
  group 'root'
  mode '0755'
  #not_if {File.exists?('/root/index.php')}
  #if_only {File.exists?('/root/index.php')}
end

Chef::Log.info ("My platform is #{node['platform']}")


if node['platform'] == 'windows'

	Chef::Log.info("I am in windows")
elsif node['platform'] == 'ubuntu'
	Chef::Log.info ("I am in ubuntu")
else
	Chef::Log.info ("I am in #{node['platform']}")
end

Chef::Log.info ("My value inside virtualization & Id is #{node['virtualization']['systems']}")