server "#{fetch(:department)}-nginx-#{fetch(:stage)}1.cul.columbia.edu", user: fetch(:remote_user), roles: %w{web app}
ask :branch, proc { `git tag --sort=version:refname`.split("\n").last }

set :url, 'http://educatingharlem-test.cul.columbia.edu'
