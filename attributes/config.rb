default['redis']['config']['appendonly'] = 'no'
default['redis']['config']['appendfsync'] = 'everysec'
default['redis']['config']['daemonize'] = 'yes'
default['redis']['config']['maxmemory'] = '1G'
default['redis']['config']['databases'] = '16'
default['redis']['config']['dbfilename'] = 'dump.rdb'
default['redis']['config']['dir'] = '/var/lib/redis'
default['redis']['config']['bind'] = '127.0.0.1'
default['redis']['config']['port'] = '6379'
default['redis']['config']['logfile'] = '/var/log/redis/redis.log'
default['redis']['config']['loglevel'] = 'warning'
default['redis']['config']['pidfile'] = '/var/run/redis/redis.pid'
default['redis']['config']['rdbcompression'] = 'yes'
default['redis']['config']['timeout'] = '300'
default['redis']['config']['activerehashing'] = 'yes'
default['redis']['config']['slowlog-log-slower-than'] = '10000'
default['redis']['config']['slowlog-max-len'] = '1024'
default['redis']['config']['maxmemory-samples'] = '3'
default['redis']['config']['no-appendfsync-on-rewrite'] = 'no'
default['redis']['config']['list-max-ziplist-entries'] = '512'
default['redis']['config']['list-max-ziplist-value'] = '64'
default['redis']['config']['zset-max-ziplist-entries'] = '128'
default['redis']['config']['zset-max-ziplist-value'] = '64'
default['redis']['config']['hash-max-ziplist-entries'] = '512'
default['redis']['config']['hash-max-ziplist-value'] = '64'
default['redis']['config']['set-max-intset-entries'] = '512'