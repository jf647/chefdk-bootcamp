# the port on which Apache should listen for requests
default['my-webapp']['http_port'] = 80

# the interface on which Apache should listen for requests
default['my-webapp']['http_addr'] = '0.0.0.0'

# the http path under which gollum should be proxied by apache
default['my-webapp']['http_path'] = '/wiki'

# the port on which Gollum should listen for requests
default['my-webapp']['gollum_port'] = 29876

# the interface on which Gollum should listen for requests
default['my-webapp']['gollum_addr'] = '127.0.0.1'

# the path to the git repo that stores the Wiki daata
default['my-webapp']['repo_path'] = '/var/lib/wiki.git'
