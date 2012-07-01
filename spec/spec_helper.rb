ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'deployments-app'

require 'dm-rspec'
require 'factory_girl'
Dir[File.expand_path("./spec/factories/*.rb")].each {|f| require f}

DataMapper.setup(:default, :adapter => 'in_memory')

RSpec.configure do |config|
  config.include DataMapper::Matchers
  config.include FactoryGirl::Syntax::Methods
end

