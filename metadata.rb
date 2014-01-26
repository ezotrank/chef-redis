name "redis"
maintainer       "Miah Johnson"
maintainer_email "miah@cx.com"
license          "Apache 2.0"
description      "Installs/configures redis"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "3.0.0"

recipe "redis::default", "The default recipe does nothing. Used to include only the LWRP"
recipe "redis::server_package", "Uses the recipe crumbs in the Redis cookbook to manage a packaged Redis instance."
recipe "redis::server_source", "Uses the recipe crumbs in the Redis cookbook to manage a source compiled Redis instance."

%w[ ubuntu centos ].each do |os|
  supports os
end

%w[ build-essential runit].each do |cookbook|
  depends cookbook
end

depends 'yum', '~> 3.0'
recommends 'monit'
