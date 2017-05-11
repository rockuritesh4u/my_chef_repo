#
# Cookbook Name:: my_check_version
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


run_context.cookbook_collection.each do |key, cookbook|
node.set['base_cookbook']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['base_cookbook']['cookbook_versions'][cookbook.name]}")
end