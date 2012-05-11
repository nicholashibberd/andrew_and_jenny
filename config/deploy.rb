$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require 'bundler/capistrano'
require 'rvm/capistrano'

set :application, "andrew_and_jenny"
set :repository,  "git@github.com:nicholashibberd/andrew_and_jenny.git"
set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
                    # This may be the same as your `Web` server

role :web, "164.177.153.144"                          # Your HTTP server, Apache/etc
role :app, "164.177.153.144"

ssh_options[:forward_agent] = true
set :rvm_type, :user #otherwise it defaults to the system ruby (which is not good!)
set :keep_releases, 5

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts
set :deploy_via, :remote_cache

set :user, "www-data"
set :branch, "master"
set :use_sudo, false

set :deploy_to, "/var/www/#{application}"

namespace :deploy do
 task :start do ; end
 task :stop do ; end
 task :restart, :roles => :app, :except => { :no_release => true } do
   run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
 end
end