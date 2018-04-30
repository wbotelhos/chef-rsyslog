# frozen_string_literal: true

execute 'rsyslog__compile' do
  command 'make && make install'
  cwd     node['chef-rsyslog']['source']['folder_path']
end
