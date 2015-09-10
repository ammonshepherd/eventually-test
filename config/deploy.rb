# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'eventually'
set :repo_url, 'https://github.com/mossiso/eventually-test.git'

set :deploy_to, '/websites/eventually'

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
