require 'deployments-app'
require 'sinatra'

class Deployments::App::Server < Sinatra::Base
  configure do
    DataMapper.setup(:default, ENV["DATABASE_URL"] || "mysql://root@localhost/deployments-app-development")
    DataMapper.auto_upgrade!
  end
end

run Deployments::App::Server

