# Chef Solo configuration

solo_path = File.expand_path(File.dirname(__FILE__))

# Common directories
cookbook_path    File.join(solo_path, 'cookbooks')
environment_path File.join(solo_path, 'environments')
role_path        File.join(solo_path, 'roles')
data_bag_path    File.join(solo_path, 'data_bags')
file_cache_path  '/tmp/chef-file-cache'
file_backup_path '/tmp/chef-file-backup'

# Node configuration
node_name        'cheftest01.example.com'
json_attribs     File.join(solo_path, 'attributes/cheftest01.example.com.json')
environment      'test'

# Debugging
#log_level        :info

