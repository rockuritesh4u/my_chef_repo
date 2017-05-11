
if node['platform'] == 'windows'

	default['check_git_depenedency']['installFolderPath'] = 'D:/Git_install/git'
	default['check_git_depenedency']['artifactFolderPath'] = 'D:/Git_install/git.exe'
	default['check_git_depenedency']['ownerattribute'] = 'administrator'
	default['check_git_depenedency']['groupattribute'] = 'administrator'
	default['check_git_depenedency']['modeattribute'] = ''
	default['check_git_depenedency']['gitdownloadurl'] = 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
	default['check_git_depenedency']['installtionpath'] ='D:/Git_install/git/bin/git.exe'
	default['check_git_depenedency']['installtionFile'] ='D:/Git_install/deployment.properties'
	default['check_git_depenedency']['installtionFileTemp'] ='Deployment_parameter.properties.windows'

else 

	default['check_git_depenedency']['installFolderPath'] = '/Git_install/git'
	default['check_git_depenedency']['artifactFolderPath'] = '/Git_install'
	default['check_git_depenedency']['ownerattribute'] = 'root'
	default['check_git_depenedency']['groupattribute'] = 'root'
	default['check_git_depenedency']['modeattribute'] = '0755'
end