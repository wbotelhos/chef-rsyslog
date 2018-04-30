# frozen_string_literal: true

node['chef-rsyslog']['source']['dependencies'].each { |pkg| package pkg }
