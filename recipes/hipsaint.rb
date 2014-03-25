#
# Cookbook Name:: nagios
# Recipe:: hipsaint
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'python'

python_pip 'hipsaint' do
  action :install
end

template "#{node['nagios']['config_dir']}/hipsaint.cfg" do
  owner node['nagios']['user']
  group node['nagios']['group']
  mode 00640
  source "hipsaint_nagios.cfg.erb"
end
