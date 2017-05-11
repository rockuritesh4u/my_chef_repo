#
# Cookbook Name:: child
# Recipe:: child.rb
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info ("i am in child Cookbook")


Chef::Log.info ("Child Name in child cookbook is #{node['child']['name']}")
Chef::Log.info ("Child Age in child cookbook is #{node['child']['age']}")