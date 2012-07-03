ENV['RACK_ENV'] = 'test'

require 'deployments-app'

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'factory_girl'

Dir[File.join(File.dirname(__FILE__), "../../spec/factories/*.rb")].each {|f| require f}
require File.join(File.dirname(__FILE__), '../../spec/support/data_mapper')

Capybara.app = Deployments::App::Server

World(Capybara::DSL)
World(RSpec::Expectations)
World(RSpec::Matchers)
World(FactoryGirl::Syntax::Methods)

