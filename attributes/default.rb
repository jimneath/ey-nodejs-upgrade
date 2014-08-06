#
# Cookbook Name:: nodejs
# Attrbutes:: default
#

default[:nodejs] = {
  # the version of node.js that you wish to install
  :version => "0.10.28",
  
  # nodejs package name
  :package => "net-libs/nodejs"
}