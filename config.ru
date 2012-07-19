require 'deployments-app'
require 'sinatra'

class Deployments::App::Server < Sinatra::Base
   set :public_folder, File.dirname(__FILE__) + "/public"

  configure do
    DataMapper.setup(:default, ENV["DATABASE_URL"] || "mysql://root@localhost/deployments-app-development")
    DataMapper.auto_upgrade!
  end
end

run Deployments::App::Server

