set :application, "gogetaquote"
set :deploy_to, "/work1/sites/gogetaquote.co.za/#{application}"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

# Use Git source control
set :scm, :git
set :repository,  "git@github.com:jcsjcs/forrester_payroll.git"
# Deploy from master branch by default
set :branch, "master"
set :deploy_via, :remote_cache
set :scm_verbose, true

set :user, "gogetaquote.co.za"
ssh_options[:port] = 222
ssh_options[:forward_agent] = true
default_run_options[:pty] = true

set :use_sudo, false
set :run_method, :run

role :app, "gogetaquote.co.za"
role :web, "gogetaquote.co.za"
role :db,  "gogetaquote.co.za", :primary => true

namespace :deploy do
  desc "Start the server"
  task :start, :roles => :app do
    #run "mongrel_rails start -e production -c #{current_path} -d -p 3000"
    run "mongrel_gogetaquote start"
  end

  desc "Stop the server"
  task :stop, :roles => :app do
    #run "mongrel_rails stop -c #{current_path}"
    run "mongrel_gogetaquote stop"
  end

  desc "Restart the server"
  task :restart, :roles => :app do
    stop
    start
  end
end

task :copy_production_database_configuration do
 run "cp database.yml #{release_path}/config/database.yml"
 run "cp mongrel_start_3010.yml #{release_path}/config/mongrel_start_3010.yml"
end
after "deploy:update_code", :copy_production_database_configuration

namespace :job do

  desc "Tail the last 50 lines of the log."
  task :tail50, :roles => :app do
    run "tail -n50 #{shared_path}/log/production.log"
  end

  desc "Tail the production log."
  task :tail_log, :roles => :app do
    run "tail -f #{shared_path}/log/production.log"
  end

end
