require 'deployments-app'
require 'sinatra'

class Deployments::App::Server < Sinatra::Base
  configure do
    DataMapper.setup(:default, ENV["DATABASE_URL"] || 'sqlite::memory:')
    DataMapper.auto_upgrade!
  end
end

run Deployments::App::Server

