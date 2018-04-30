# frozen_string_literal: true

execute 'rsyslog__libfastjson__compile' do
  command 'make && make install'
  cwd     node['chef-rsyslog']['libfastjson']['source']['folder_path']
end
