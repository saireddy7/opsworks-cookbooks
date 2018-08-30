execute 'test' do
 #   cwd 'myapp-codecommit/myfiles'
 command 'git clone https://'+node[:awscli][:GIT_USER]+':'+node[:awscli][:GIT_PASS]+'@bitbucket.org/charvee/node-jenkins-pipeline-test.git'
    #command 'git clone https://'+node[:awscli][:GIT_USER]+':'+node[:awscli][:GIT_PASS]+'@git-codecommit.us-east-1.amazonaws.com/v1/repos/myapp-codecommit'
 # command '$(git describe --abbrev=0 --tags)'
  
 #puts "output is #{command}"

end