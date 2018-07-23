#
# Cookbook:: charvee_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
puts 'hello world!'

package 'apache2' do 
	action :install
end



service 'apache2' do
	action [:start, :enable]
end
