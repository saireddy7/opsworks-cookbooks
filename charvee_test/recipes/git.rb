puts 'charvee git example'

#include_recipe 'git'

#git "var/www/html/" do
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
#end


execute "var/www/html/" do
  command 'git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
  GIT_PASS node[:awscli][:GIT_USER]
  GIT_PASS node[:awscli][:GIT_PASS]
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
end