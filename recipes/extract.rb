# frozen_string_literal: true

execute 'rsyslog__extract' do
  command "tar xf #{node['chef-rsyslog']['source']['file_path']}"
  cwd     Chef::Config['file_cache_path']

  not_if { ::File.directory? node['chef-rsyslog']['source']['folder_path'] }
end
