# frozen_string_literal: true

execute 'rsyslog__libfastjson__extract' do
  command "tar xf #{node['chef-rsyslog']['libfastjson']['source']['file_path']}"
  cwd     Chef::Config['file_cache_path']

  not_if { ::File.directory? node['chef-rsyslog']['libfastjson']['source']['folder_path'] }
end
