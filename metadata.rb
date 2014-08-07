name             'my-webapp'
version          '0.1.0'
maintainer       'James FitzGibbon'
maintainer_email 'james@nadt.net'
license          'MIT'
description      'Sets up my-webapp'
long_description <<-EOH
This cookbook is the companion to the "ChefDK Bootcamp" tutorial document.  It demonstrates
how to create a cookbook and create style, unit and integration tests.  It is not meant for
production use
EOH
supports         'ubuntu', '>= 12.04'
supports         'centos', '>= 6.4'
recipe           'my-webapp::default', 'installs and configured apache2 and gollum'
recipe           'my-webapp::apache2', 'installs apache2'
recipe           'my-webapp::gollum', 'installs gollum and a service to start it on boot'
recipe           'my-webapp::revproxy', 'configured an apache2 reverse proxy for gollum'
