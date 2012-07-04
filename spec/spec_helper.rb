ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'deployments-app'
require 'factory_girl'
require 'dm-rspec'

Dir[File.expand_path("./spec/factories/*.rb")].each {|f| require f}

require_relative 'support/data_mapper'
require_relative 'support/rack_test'

RSpec.configure do |config|
  config.include DataMapper::Matchers
  config.include FactoryGirl::Syntax::Methods
  config.include Rack::Test::Methods
end

