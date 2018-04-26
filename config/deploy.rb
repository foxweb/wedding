require 'mina/git'

set :domain, '37.139.12.234'
set :user, 'foxweb'
set :deploy_to, '/home/foxweb/www/wedding.kurepin.com'
set :repository, 'git@github.com:foxweb/wedding.git'
set :branch, 'master'
set :keep_releases, 5

task setup: :environment do
  # nothing
end

desc 'Deploys the current version to the server.'
task deploy: :environment do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:cleanup'

    to :launch do
      # nothing
    end
  end
end
