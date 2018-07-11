#puts 'charvee git example'

#include_recipe 'git'

#git "var/www/html/" do
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
#end


execute 'test' do
	echo "hello"
#command 'vi etc/test.txt'
 #  code 'echo "[credential] \nhelper = !aws --profile CodeCommitProfile codecommit credential-helper $@ \nUseHttpPath = true \n\n[user] \nemail = charvee@example.com \nname = testuser" > ~/.gitconfig'
  # command 'git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
end


#template "/tmp/.ssh/chef_ssh_deploy_wrapper.sh" do
 # source "chef_ssh_deploy_wrapper.sh.erb"
  #owner node[:base][:username]
  #mode 0770
#end

#template "/home/#{node[:base][:username]}/.ssh/id_rsa.pub" do
  #source "id_rsa.pub.erb"
  #owner node[:base][:username]
  #mode 0600
#end

#template "/home/#{node[:base][:username]}/.ssh/id_rsa" do
 # source "id_rsa.erb"
 # owner node[:base][:username]
 # mode 0600
#end