# frozen_string_literal: true

execute 'rsyslog__libfastjson__configure' do
  command "./configure --disable-install-doc"
  cwd     node['chef-rsyslog']['libfastjson']['source']['folder_path']
end
