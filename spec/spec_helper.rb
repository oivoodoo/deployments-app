ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'deployments-app'

require 'dm-rspec'
require 'factory_girl'
Dir[File.expand_path("./spec/factories/*.rb")].each {|f| require f}

DataMapper.setup(:default, 'mysql://root@localhost/deployments')

DataMapper.finalize
DataMapper.auto_migrate!

RSpec.configure do |config|
  config.include DataMapper::Matchers
  config.include FactoryGirl::Syntax::Methods
end

