require 'erb'

set :application, "ngodb"
set :repository,  "git://github.com/adamh/ngodb.git"
set :deploy_to, "/home/adam/rails/#{application}"
set :scm, :git
set :runner, :adam

role :app, "web.densi.com"
role :web, "web.densi.com"
role :db,  "web.densi.com", :primary => true

ssh_options[:keys] = "#{ENV['home']}/.ssh/id_dsa"
ssh_options[:forward_agent] = true

namespace :deploy do
  desc "Does not start the server because it is built-in to Apache"
  task :start, :roles => :app do
  end

  desc "Does not stop the server because it is built-in to Apache"
  task :stop, :roles => :app do
  end

  desc "Restarts the server"
  task :restart, :roles => :app do
    run %(touch #{latest_release}/tmp/restart.txt)
  end

  desc "Fixes permissions and updates symlinks"
  task :after_update_code, :roles => :app do
    sudo %(chown www-data:www-data #{latest_release}/config/environment.rb)
    run "ln -nfs #{shared_path}/config/admin-password #{release_path}/config/admin-password" 
  end
end

before "deploy:setup", :db
after "deploy:update_code", "db:symlink" 

# Copied from http://www.shanesbrain.net/2007/5/30/managing-database-yml-with-capistrano-2-0
namespace :db do
  desc "Create database yaml in shared path" 
  task :default do
    db_config = ERB.new <<-EOF
base: &base
  adapter: mysql
  socket: /tmp/mysql.sock
  username: ngodb
  password: ngodb

development:
  database: #{application}_dev
  <<: *base

test:
  database: #{application}_test
  <<: *base

production:
  database: #{application}_prod
  <<: *base
EOF

    run "mkdir -p #{shared_path}/config" 
    put db_config.result, "#{shared_path}/config/database.yml" 
    run "echo default-password > #{shared_path}/config/admin-password"
  end

  desc "Make symlink for database yaml" 
  task :symlink do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml" 
  end
end
