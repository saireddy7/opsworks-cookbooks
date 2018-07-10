#puts 'charvee git example'

#include_recipe 'git'

#git "var/www/html/" do
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
#end


execute "test" do
command 'echo hello'
#   command 'echo "[credential] \nhelper = !aws --profile CodeCommitProfile codecommit credential-helper $@ \nUseHttpPath = true \n\n[user] \nemail = charvee@example.com \nname = testuser" > ~/.gitconfig'
#  command 'git clone https://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
#  repository "ssh://git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit"
#  reference "master"
#  action :sync
end



	