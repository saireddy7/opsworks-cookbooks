
puts 'install awscli'

include_resource 'cloud_cli_aws_s3_bucket'

aws_s3_bucket 'charvee_test' do
  aws_access_key aws node[:awscli][:aws_access_key_id]
  aws_secret_access_key aws node[:awscli][:aws_secret_access_key]
  versioning true
  region 'us-west-1'
  action :create
end