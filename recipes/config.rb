# frozen_string_literal: true

template '/etc/rsyslog.conf' do
  mode   0644
  source 'etc/rsyslog.conf.erb'

  notifies :restart, "service[rsyslog]"
end
