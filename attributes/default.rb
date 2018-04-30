# frozen_string_literal: true

default['chef-rsyslog']['configure'] = %w[--enable-imfile]
default['chef-rsyslog']['files']     = []
default['chef-rsyslog']['modules']   = {}

default['chef-rsyslog']['dir_create_mode']    = '0755'
default['chef-rsyslog']['file_create_mode']   = '0640'
default['chef-rsyslog']['file_group']         = 'root'
default['chef-rsyslog']['file_owner']         = 'root'
default['chef-rsyslog']['polling_interval']   = 5
default['chef-rsyslog']['priv_drop_to_group'] = 'root'
default['chef-rsyslog']['priv_drop_to_user']  = 'root'
default['chef-rsyslog']['umask']              = '0022'

default['chef-rsyslog']['source']['checksum']  = '18330a9764c55d2501b847aad267292bd96c2b12fa5c3b92909bd8d4563c80a9'
default['chef-rsyslog']['source']['extension'] = 'tar.gz'
default['chef-rsyslog']['source']['uri']       = 'http://www.rsyslog.com/download/files/download/rsyslog'
default['chef-rsyslog']['source']['version']   = '8.34.0'

default['chef-rsyslog']['source']['folder_name'] = "rsyslog-#{node['chef-rsyslog']['source']['version']}"
default['chef-rsyslog']['source']['file_name']   = "#{node['chef-rsyslog']['source']['folder_name']}.#{node['chef-rsyslog']['source']['extension']}"
default['chef-rsyslog']['source']['file_path']   = "#{Chef::Config['file_cache_path']}/#{node['chef-rsyslog']['source']['file_name']}"
default['chef-rsyslog']['source']['folder_path'] = "#{Chef::Config['file_cache_path']}/#{node['chef-rsyslog']['source']['folder_name']}"
default['chef-rsyslog']['source']['url']         = "#{node['chef-rsyslog']['source']['uri']}/#{node['chef-rsyslog']['source']['file_name']}"

default['chef-rsyslog']['libfastjson']['source']['checksum']  = '3544c757668b4a257825b3cbc26f800f59ef3c1ff2a260f40f96b48ab1d59e07'
default['chef-rsyslog']['libfastjson']['source']['extension'] = 'tar.gz'
default['chef-rsyslog']['libfastjson']['source']['uri']       = 'http://download.rsyslog.com/libfastjson'
default['chef-rsyslog']['libfastjson']['source']['version']   = '0.99.8'

default['chef-rsyslog']['libfastjson']['source']['folder_name'] = "libfastjson-#{node['chef-rsyslog']['libfastjson']['source']['version']}"
default['chef-rsyslog']['libfastjson']['source']['file_name']   = "#{node['chef-rsyslog']['libfastjson']['source']['folder_name']}.#{node['chef-rsyslog']['libfastjson']['source']['extension']}"
default['chef-rsyslog']['libfastjson']['source']['file_path']   = "#{Chef::Config['file_cache_path']}/#{node['chef-rsyslog']['libfastjson']['source']['file_name']}"
default['chef-rsyslog']['libfastjson']['source']['folder_path'] = "#{Chef::Config['file_cache_path']}/#{node['chef-rsyslog']['libfastjson']['source']['folder_name']}"
default['chef-rsyslog']['libfastjson']['source']['url']         = "#{node['chef-rsyslog']['libfastjson']['source']['uri']}/#{node['chef-rsyslog']['libfastjson']['source']['file_name']}"

default['chef-rsyslog']['source']['dependencies'] = %w[
  build-essential
  pkg-config
  libestr-dev
  zlib1g-dev
  uuid-dev
  libgcrypt20-dev
  liblogging-stdlog-dev
  libhiredis-dev
  libgcrypt11-dev
  flex
  bison
  libcurl4-openssl-dev
  rsyslog-gnutls
]
