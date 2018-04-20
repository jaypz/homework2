#
# Cookbook:: fuse
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

apt_package 'apache2' do
	action :install
end

template '/var/www/html/fuse.html' do
	mode '0644'
	source 'fuse.erb'
	action :create
end

cookbook_file '/var/www/html/.htaccess' do
	source 'htaccess'
	owner 'root'
	group 'www-data'
	mode '0640'
	action :create
end

file '/var/www/html/index.html' do
	action :delete
end


link '/var/www/html/index.html' do
	to '/var/www/html/fuse.html'
	link_type :symbolic
	action :create
end

