#
# Cookbook:: charvee_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
puts 'hello world!'

package 'apache2' do 
	action :install
end

cookbook_file '/var/www/html/index.html' do
	source 'index.html'
end

service 'apache2' do
	action [:start, :enable]
end
