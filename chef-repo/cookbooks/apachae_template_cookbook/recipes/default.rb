#
# Cookbook Name:: apachae_template_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


template '/root/server.xml' do
  source 'server.xml.erb'
  mode '0775'
  owner 'root'
  group 'root'
   variables({

    forwardport: node['apachae_template_cookbook']['portnumber'],
	sslport: node['apachae_template_cookbook']['sslport']	

  })
end