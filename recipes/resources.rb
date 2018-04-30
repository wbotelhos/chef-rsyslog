# frozen_string_literal: true

service 'rsyslog' do
  action   :start
  supports restart: true
end
