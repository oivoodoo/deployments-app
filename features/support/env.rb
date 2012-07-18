ENV['RACK_ENV'] = 'test'

require 'deployments-app'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'factory_girl'

Dir[File.join(File.dirname(__FILE__), "../../spec/factories/*.rb")].each {|f| require f}
require File.join(File.dirname(__FILE__), '../../spec/support/data_mapper')
require File.join(File.dirname(__FILE__), '../../spec/support/factory_girl')

Capybara.app = Deployments::App::Server

World(Capybara::DSL)
World(RSpec::Expectations)
World(RSpec::Matchers)
World(FactoryGirl::Syntax::Methods)

begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'
  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end
