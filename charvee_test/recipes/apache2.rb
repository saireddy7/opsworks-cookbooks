package 'apache2' do 
	action :install
end

cookbook_file '/var/www/html/index.html' do
	source 'index.html'
end

service 'apache2' do
	action [:start, :enable]
end
