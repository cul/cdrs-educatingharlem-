server "all-nginx-#{fetch(:stage)}1.cul.columbia.edu", user: fetch(:remote_user), roles: %w{web app}
ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

set :url, 'http://educatingharlem-dev.cul.columbia.edu'
