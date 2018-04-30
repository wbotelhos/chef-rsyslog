# frozen_string_literal: true

remote_file node['chef-rsyslog']['source']['file_path'] do
  checksum node['chef-rsyslog']['source']['checksum']
  source   node['chef-rsyslog']['source']['url']

  not_if { ::File.exist? node['chef-rsyslog']['source']['file_path'] }
end
