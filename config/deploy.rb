set :application, "ngodb"
set :repository,  "git://github.com/adamh/ngodb.git"
set :deploy_to, "/home/adam/rails/#{application}"
set :scm, :git

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
    run %(touch #{release_path}/tmp/restart.txt)
  end
end
