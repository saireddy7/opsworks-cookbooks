#puts 'charvee git example'

#include_recipe 'git'

#git "var/www/html/" do
 # repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
  #reference "master"
  #action :sync
#end


execute 'test' do
	#command 'echo "hello"'
	#command 'echo -e "protocol=https\npath=/v1/repos/myapp-codecommit\nhost=git-codecommit.us-east-1.amazonaws.com" | aws codecommit credential-helper get'
	#command 'git clone https://node[:awscli][:GIT_USER]:node[:awscli][:GIT_PASS]@git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
#command 'vi etc/test.txt'
  #code 'echo "[credential] \nhelper = !aws --profile CodeCommitProfile codecommit credential-helper $@ \nUseHttpPath = true \n\n[user] \nemail = charvee@example.com \nname = testuser" > ~/.gitconfig'
  command 'echo "[credentials] \nusername = #{node[:awscli][:GIT_USER]} \npassword = #{node[:awscli][:GIT_PASS]}" > ~/.credentials'
  # command 'echo "machine git-codecommit.us-east-1.amazonaws.com" >> ~/.netrc'
 #  command 'echo "login node[:awscli][:GIT_USER]" >> ~/.netrc'
 #  command 'echo "password node[:awscli][:GIT_PASS]" >> ~/.netrc'
 #  command 'git clone -b master https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
   #command 'git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
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