

default['apache']['dir'] = '/etc/apache2'

#Default attribute in node object in recipe
node.default['apache']['dir'] = '/etc/apache2'

#Default attribute in /environments/environment_name.rb

default_attributes({ 'apache' => {'dir' => '/etc/apache2'}})

#Default attribute in /roles/role_name.rb
default_attributes({ 'apache' => {'dir' => '/etc/apache2'}})

#Normal attribute set as a cookbook attribute
set['apache']['dir'] = '/etc/apache2'
normal['apache']['dir'] = '/etc/apache2'  #set is an alias of normal.
Normal attribute set in a recipe
node.set['apache']['dir'] = '/etc/apache2'

node.normal['apache']['dir'] = '/etc/apache2' # Same as above
node['apache']['dir'] = '/etc/apache2'       # Same as above
Override attribute in /attributes/default.rb
override['apache']['dir'] = '/etc/apache2'
Override attribute in /roles/role_name.rb
override_attributes({ 'apache' => {'dir' => '/etc/apache2'}})
Override attribute in /environments/environment_name.rb
override_attributes({ 'apache' => {'dir' => '/etc/apache2'}})
Override attribute in a node object (from a recipe)
node.override['apache']['dir'] = '/etc/apache2'


#Ensure that a default attribute has precedence over other attributes
#When a default attribute is set like this:
default['attribute'] = 'value'


#any value set by a role or an environment will replace it. To prevent this value from being replaced, use the force_default attribute precedence:
force_default['attribute'] = 'I will crush you, role or environment attribute'
#or:

default!['attribute'] = "The '!' means I win!"
#Ensure that an override attribute has precedence over other attributes
#When an override attribute is set like this:
override['attribute'] = 'value'

#any value set by a role or an environment will replace it. To prevent this value from being replaced, use the force_override attribute precedence:
force_override['attribute'] = 'I will crush you, role or environment attribute'
#or:
override!['attribute'] = "The '!' means I win!"