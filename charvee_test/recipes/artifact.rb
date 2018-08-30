remote_file 'test2.jar' do
  source lazy {
    git_describe = shell_out!('git describe --abbrev=0 --tags', cwd: 'node-jenkins-pipeline-test').stdout.strip
     "https://s3.amazonaws.com/versiontags/#{git_describe}"
     #"https://s3.amazonaws.com/versiontags/#{git_describe}.jar"
  }
end