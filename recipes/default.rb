#
# Cookbook Name:: nodejs
# Recipe:: default
#

if node[:instance_role][/app|util|solo/]
  # unmask nodejs version
  enable_package node[:nodejs][:package] do
    version node[:nodejs][:version]
  end

  # eselect node version
  execute "eselect-nodejs" do
    command "eselect nodejs set #{node[:nodejs][:version]}"
    action :nothing
  end 

  # install package
  package node[:nodejs][:package] do
    version node[:nodejs][:version]
    notifies :run, 'execute[eselect-nodejs]', :immediately
  end
end