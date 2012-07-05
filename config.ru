require 'deployments-app'

class Deployments::App::Server
  configure do
    DataMapper.setup(:default, ENV["DATABASE_URL"])
    DataMapper.auto_upgrade!
  end
end

run Deployments::App::Server

