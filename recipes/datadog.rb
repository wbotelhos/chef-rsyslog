# frozen_string_literal: true

template '/etc/rsyslog.d/datadog.conf' do
  mode   0644
  source 'etc/rsyslog.d/datadog.conf.erb'

  notifies :restart, "service[rsyslog]"
end
