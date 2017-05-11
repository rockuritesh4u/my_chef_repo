
#
# Cookbook Name:: parent
# Recipe:: parent.rb
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info ("i am in parent Cookbook")

include_recipe 'child::child_recipe' 

Chef::Log.info ("Child Name is #{node['child']['name']}")
Chef::Log.info ("Child Age is #{node['child']['age']}")

Chef::Log.info ("Parent Name is #{node['parent']['name']}")
Chef::Log.info ("parent Age is #{node['parent']['age']}")