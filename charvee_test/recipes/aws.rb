
#puts 'install awscli'

#include_ 'cloud_cli_aws_s3_bucket'

#Chef::Recipe.send(:include, s3_bucket)
#Chef::Resource::create.send(:include, s3_bucket)

#aws_s3_bucket 'charvee_test' do
#  aws_access_key aws node[:awscli][:aws_access_key_id]
#  aws_secret_access_key aws node[:awscli][:aws_secret_access_key]
#  versioning true
#  region 'us-west-1'
#  action :create
#end


include_recipe 'aws'

aws_s3_file "var/www/html/" do
  bucket "codepipeline-us-east-1-51835399533"
  remote_path "/testpipeline/MyAppBuild"
  aws_access_key_id node[:awscli][:aws_access_key_id]
  aws_secret_access_key node[:awscli][:aws_secret_access_key]
end


