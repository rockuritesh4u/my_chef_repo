#
# Cookbook Name:: coying_file_on_nodes
# Recipe:: createfolder.rb
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node['platform'] == 'windows'

	Chef::Log.info("I am in windows")
elsif node['platform'] == 'ubuntu'
	Chef::Log.info ("I am in ubuntu")
else
	Chef::Log.info ("I am in #{node['platform']}")
end



directory node['coying_file_on_nodes']['folderpath'] do
  owner "#{node['coying_file_on_nodes']['ownerattribute']}"
  group "#{node['coying_file_on_nodes']['groupattribute']}"
  mode "#{node['coying_file_on_nodes']['modeattribute']}"
  recursive true
  action :create
end

file node['coying_file_on_nodes']['filename'] do
  content '<html>This is a new HTMl file for testing .</html>'
  owner "#{node['coying_file_on_nodes']['ownerattribute']}"
  group "#{node['coying_file_on_nodes']['groupattribute']}"
  mode "#{node['coying_file_on_nodes']['modeattribute']}"
  #not_if {File.exists?('/root/index.php')}
  #if_only {File.exists?('/root/index.php')}
end