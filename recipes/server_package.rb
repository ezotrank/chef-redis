#
# Cookbook Name:: redis
# Recipe:: _server_install_from_package

case node.platform_family
when "debian"
  pkg = node.redis.package_name
when "rhel", "fedora", "centos"
  include_recipe "yum"

  # add the EPEL repo
  yum_repository 'epel' do
    description 'Extra Packages for Enterprise Linux'
    mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
    gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
    action :create
  end

  pkg = "redis"
else
  pkg = "redis"
end

package "redis" do
  package_name pkg
  version(node['redis']['package']['version']) if node['redis']['package']['version']
  action :install
end
