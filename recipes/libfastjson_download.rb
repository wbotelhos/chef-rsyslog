# frozen_string_literal: true

remote_file node['chef-rsyslog']['libfastjson']['source']['file_path'] do
  checksum node['chef-rsyslog']['libfastjson']['source']['checksum']
  source   node['chef-rsyslog']['libfastjson']['source']['url']

  not_if { ::File.exist? node['chef-rsyslog']['libfastjson']['source']['file_path'] }
end
