#
# Cookbook Name:: install_git
# Recipe:: install_git.rb
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#



Chef::Log.info ("Installing Git if not already installed")

include_recipe 'check_git_depenedency::check_dependency' 


execute 'install_git' do
 command "#{node['check_git_depenedency']['artifactFolderPath']} /LOADINF=#{node['check_git_depenedency']['installtionFile']} /SILENT"
 #command "#{node['check_git_depenedency']['artifactFolderPath']} /SILENT"
 not_if {File.exists?(node['check_git_depenedency']['installtionpath'])}
end
