# frozen_string_literal: true

execute 'rsyslog__configure' do
  command "./configure #{node['chef-rsyslog']['configure'].join(' ')}"
  cwd     node['chef-rsyslog']['source']['folder_path']
end
