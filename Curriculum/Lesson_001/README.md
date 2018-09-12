
# Chef Academy

## Lesson 1

### What happens during the first Chef run?


1. Chef solo is started by command `chef-solo -c solo.rb`.
1. At first chef will read node attributes from:\
   ./attributes/cheftest01.example.com.json
1. The run_list tells Chef what to run in which order\
   `recipe[motd]` is short for `recipe[motd::default]` and means\
   run recipe ./cookbooks/motd/recipes/default.rb
1. default.rb contains only one resource\
   `cookbook_file '/etc/motd'` which means:\
   "In ./cookbooks/motd/files/ you will find a file named 'motd'. Copy it to /etc/motd."

### Other Chef resources

The most important resources are

* [directory](https://docs.chef.io/resource_directory.html)
* [cookbook_file](https://docs.chef.io/resource_cookbook_file.html)
* [template](https://docs.chef.io/resource_template.html)
* [package](https://docs.chef.io/resource_package.html)
* [execute](https://docs.chef.io/resource_execute.html)
* [group](https://docs.chef.io/resource_group.html)
* [user](https://docs.chef.io/resource_user.html)

## Excercise 1

1. Create a new cookbook named "academy_users"
1. Write a recipe named "students" and let Chef do:
   1. Create a group "academy"
   1. Create a user "bob" with primary group academy
   1. Make directory path "/home/bob/.ssh"
   1. Copy Bob's authorized_keys file from your cookbook to\
      "/home/bob/.ssh/authorized_keys"
1. Let your new recipe "students" run after motd::default

