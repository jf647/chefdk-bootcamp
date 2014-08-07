# my-webapp Cookbook

This cookbook is the companion to the "ChefDK Bootcamp" tutorial document.  It demonstrates how to
create a cookbook and create style, unit and integration tests.  It is not meant for production use.

## Usage

### Installation

As this cookbook is for demonstration purposes, it should not be wrapped by other cookbooks.  However,
if you want to do this, add the following line to your metadata.rb:

```ruby
depends 'my-webapp'
```

and the following line to your Berksfile:

```
cookbook 'my-webapp', :git => 'https://github.com/jf647/chefdk-bootcamp.git', :branch => 'final'
```

This cookbook is not available via the Berkshelf or Chef Supermarket APIs.

### Invocation

Add the recipe 'my-webapp' to your node's run-list.

### Recipes

This cookbook contains two distinct recipes:

* my-webapp::apache: installs apache2 for serving the webapp
* my-webapp::gollum: installs the gollum application and a service to start it on boot
* my-webapp::revproxy: configures an apache2 reverse proxy to allow access to gollum

The 'my-webapp::default' recipe will pull in all of these recipes.

### Attributes

The following attributes may be set to modify the behaviour of this cookbook.  Refer to the file
attributes/default.rb for an annotated description of each attribute.

These attributes are under the 'my-webapp' namespace.

* http_port: the port on which apache2 should listen for requests.  Defaults to 80
* http_addr: the port on which apache2 should listen for requests.  Defaults to '0.0.0.0' (all interfaces)
* http_path: the path under which the web server should proxy access to golum.  Defaults to '/wiki'
* gollum_port: the port on which Gollum should listen for requests.  Defaults to 29876
* gollum_addr: the interface on which Gollum should listen for requests.  Defaults to '127.0.0.1'
* repo_path: the path to the git repository that holds the repository.  Defaults to '/var/lib/wiki.git'

## License

Copyright (c) 2014 James FitzGibbon

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
