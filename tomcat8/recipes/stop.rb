service 'tomcat8' do
  action [:enable, :stop]
  only_if { node['tomcat8']['autostart'] }
end