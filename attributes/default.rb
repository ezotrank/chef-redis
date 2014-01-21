#
# Cookbook Name:: redis
# Attributes:: default
#
# Copyright 2010, Atari, Inc
# Copyright 2012, CX, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# installation
default.redis.install_type   = "package"
default.redis.package_name   = "redis-server"
default.redis.source.sha     = "6b6602321536401b8b46aa05ec509141506b689b420675685ffe147ae08c0c86"
default.redis.source.url     = "http://redis.googlecode.com/files"
default.redis.source.version = "2.8.4"
default.redis.package.version = false
default.redis.src_dir    = "/usr/src/redis"
default.redis.dst_dir    = "/opt/redis"
default.redis.config_path = '/etc/redis.conf'
default.redis.service_name = 'redis'