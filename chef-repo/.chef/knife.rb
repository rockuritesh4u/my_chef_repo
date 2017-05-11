# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "rockuritesh4u"
client_key               "#{current_dir}/rockuritesh4u.pem"
chef_server_url          "https://api.chef.io/organizations/riteshneworg"
cookbook_path            ["#{current_dir}/../cookbooks"]
https_proxy				"https://www-proxy.us.oracle.com:80"
roles_path 				["#{current_dir}/../roles"]