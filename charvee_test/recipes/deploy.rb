deploy_branch node[:my_app][:deploy_to] do
  repo              node[:base][:repository]
  ssh_wrapper       "/tmp/.ssh/chef_ssh_deploy_wrapper.sh"
  branch            "rails4"
  user               node[:base][:username]
  group              node[:base][:username]
  rollback_on_error  true
  migrate            false
  environment        "RAILS_ENV" => node[:my_app][:environment] 
  purge_before_symlink %w{conf data log tmp public/system public/assets}
  create_dirs_before_symlink []
  symlinks(                        
    "config"   => "config",        
    "data"   => "data",            
    "log"    => "log",             
    "tmp"    => "tmp",             
    "system" => "public/system",  
    "assets" => "public/assets"  
  )
  scm_provider Chef::Provider::Git # is the default, for svn: Chef::Provider::Subversion
  before_restart do
    system("su #{node[:base][:username]} -c 'cd #{node[:my_app][:deploy_to]}/current && /usr/bin/bundle install'") or raise "bundle install failed"
    system("su #{node[:base][:username]} -c 'RAILS_ENV=production /usr/local/bin/rake assets:precompile'")
  end
  notifies :restart, "service[my_app]"
  notifies :restart, "service[nginx]"
end