#
# Cookbook Name:: check_git_depenedency
# Recipe:: check_dependency.rb
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("Checking Directory #{node['check_git_depenedency']['installFolderPath']} and Creating if no present")

directory node['check_git_depenedency']['installFolderPath'] do
  owner node['check_git_depenedency']['ownerattribute']
  group node['check_git_depenedency']['groupattribute']
  mode node['check_git_depenedency']['modeattribute']
  recursive true
  action :create
end


Chef::Log.info("Download Git Artifact ")

remote_file node['check_git_depenedency']['artifactFolderPath'] do
  source node['check_git_depenedency']['gitdownloadurl']
  action :create
end


Chef::Log.info ("Copy the deployment file to the node")
cookbook_file node['check_git_depenedency']['installtionFile'] do
  source node['check_git_depenedency']['installtionFileTemp']
  owner node['check_git_depenedency']['ownerattribute']
  group node['check_git_depenedency']['groupattribute']
  mode node['check_git_depenedency']['modeattribute']
  action :create
end