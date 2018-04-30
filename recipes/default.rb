# frozen_string_literal: true

include_recipe 'chef-rsyslog::dependencies'

include_recipe 'chef-rsyslog::libfastjson_download'
include_recipe 'chef-rsyslog::libfastjson_extract'
include_recipe 'chef-rsyslog::libfastjson_configure'
include_recipe 'chef-rsyslog::libfastjson_compile'

include_recipe 'chef-rsyslog::download'
include_recipe 'chef-rsyslog::extract'
include_recipe 'chef-rsyslog::configure'
include_recipe 'chef-rsyslog::compile'
include_recipe 'chef-rsyslog::resources'
include_recipe 'chef-rsyslog::config'

node['chef-rsyslog']['modules'].each_key do |name|
  include_recipe "chef-rsyslog::#{name}"
end
