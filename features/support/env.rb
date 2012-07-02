ENV['RACK_ENV'] = 'test'

require 'deployments-app'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Deployments::App::Server

World do
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

