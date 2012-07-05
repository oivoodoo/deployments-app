ENV['RACK_ENV'] ||= 'test'

require 'deployments-app'
require 'factory_girl'
require 'dm-rspec'
require 'database_cleaner'

Dir[File.expand_path("./spec/factories/*.rb")].each {|f| require f}

require_relative 'support/data_mapper'
require_relative 'support/rack_test'

RSpec.configure do |config|
  config.include DataMapper::Matchers
  config.include FactoryGirl::Syntax::Methods
  config.include Rack::Test::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

