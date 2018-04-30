description      'Installs and configure RSYSLOG.'
license          'MIT'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer       'Washington Botelho'
maintainer_email 'wbotelhos@gmail.com'
name             'chef-rsyslog'
version          '0.1.0'

recipe 'chef-rsyslog::compile',               'Compiles the source code.'
recipe 'chef-rsyslog::config',                'Create config file.'
recipe 'chef-rsyslog::configure',             'Configures the source code.'
recipe 'chef-rsyslog::datadog',               'Module to configure datadog support.'
recipe 'chef-rsyslog::dependencies',          'Installs dependencies.'
recipe 'chef-rsyslog::download',              'Downloads the source.'
recipe 'chef-rsyslog::extract',               'Extracts the source code.'
recipe 'chef-rsyslog::libfastjson_compile',   'Compiles the source code.'
recipe 'chef-rsyslog::libfastjson_config',    'Create config file.'
recipe 'chef-rsyslog::libfastjson_configure', 'Configures the source code.'
recipe 'chef-rsyslog::libfastjson_download',  'Downloads the source.'
recipe 'chef-rsyslog::libfastjson_extract',   'Extracts the source code.'
recipe 'chef-rsyslog::resources',             'Configure service actions.'

issues_url 'https://github.com/wbotelhos/chef-rsyslog/issues'
source_url 'https://github.com/wbotelhos/chef-rsyslog'

supports 'ubuntu'

chef_version '>= 11'
