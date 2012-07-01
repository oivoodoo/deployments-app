ENV['RACK_ENV'] ||= 'test'

require 'rubygems'
require 'deployments-app'

require 'dm-rspec'

RSpec.configure do |config|
    config.include(DataMapper::Matchers)
end

