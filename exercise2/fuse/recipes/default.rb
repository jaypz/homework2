#
# Cookbook:: fuse
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

apt_package 'apache2' do
	action: install
end

template '/var/www/html/fuse.html' do
	mode '0644'
	source 'fuse.erb'
end
