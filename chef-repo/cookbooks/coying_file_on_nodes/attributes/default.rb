
if node['platform'] == 'windows'
	default['coying_file_on_nodes']['folderpath'] = 'D:/NewChef_Folder_Temp'
	default['coying_file_on_nodes']['filename'] = "#{node['coying_file_on_nodes']['folderpath']}/index.php"
	default['coying_file_on_nodes']['ownerattribute'] = 'administrator'
	default['coying_file_on_nodes']['groupattribute'] = 'administrator'
	default['coying_file_on_nodes']['modeattribute'] = ''

else
	default['coying_file_on_nodes']['folderpath'] = '/rit/NewChef_Folder_Temp'
	default['coying_file_on_nodes']['filename'] = "#{node['coying_file_on_nodes']['folderpath']}/index.php"
	default['coying_file_on_nodes']['ownerattribute'] = 'root'
	default['coying_file_on_nodes']['groupattribute'] = 'root'
	default['coying_file_on_nodes']['modeattribute'] = '0755'
end