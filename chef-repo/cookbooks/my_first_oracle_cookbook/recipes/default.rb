#
# Cookbook Name:: my_first_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My first cookbook")

=begin
directory '/root/apache2/test1/test2' do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end


%w[ /root/ritesh /root/prasad/ritesh /root/ritz/ritesh/prasad ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0755'
	recursive true
  end
end
=end

=begin
remote_file 'D:/CHEF_Temp/GIT/Git-2.12.2.2-64-bit.exe' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
end


execute 'install_git' do
 command 'D:/CHEF_Temp/GIT/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if {File.exists?('C:\Program Files\Git\bin\git.exe')}
end

=end 




remote_file node['my_first_oracle_cookbook']['gitfolderpath'] do
  source node['my_first_oracle_cookbook']['gitdownloadurl']
  action :create
end


execute 'install_git' do
 command "#{node['my_first_oracle_cookbook']['gitfolderpath']} /SILENT"
 not_if {File.exists?(node['my_first_oracle_cookbook']['installtionpath'])}
end
