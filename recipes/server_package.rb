#
# Cookbook Name:: redis
# Recipe:: _server_install_from_package

case node.platform_family
when "debian"
  pkg = node.redis.package_name
when "rhel", "fedora", "centos"
  include_recipe "yum::remi"
  pkg = "redis"
else
  pkg = "redis"
end

package "redis" do
  package_name pkg
  version(node['redis']['package']['version']) if node['redis']['package']['version']
  action :install
end
