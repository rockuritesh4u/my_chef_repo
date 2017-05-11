#
# Cookbook Name:: deployment_env_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info (" I am version 0.1.3")

Chef::Log.info (" This is the precedence1 check : #{node['deployment_env_cookbook']['precedence1']}")

Chef::Log.info (" This is the precedence2 check : #{node['deployment_env_cookbook']['precedence2']}")

node.override['apache']['dir'] = '/etc/apache2'

Chef::Log.info(node['apache']['dir'])