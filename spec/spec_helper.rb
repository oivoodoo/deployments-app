ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'deployments-app'

require 'factory_girl'

Dir[File.expand_path("./spec/factories/*.rb")].each {|f| require f}

require 'dm-rspec'

DataMapper.setup(:default, 'mysql://root@localhost/deployments')
DataMapper.finalize
DataMapper.auto_migrate!

require 'rack/test'

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  Sinatra::Application
end

RSpec.configure do |config|
  config.include DataMapper::Matchers
  config.include FactoryGirl::Syntax::Methods
  config.include Rack::Test::Methods
end

