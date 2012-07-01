require 'rubygems'
require 'data_mapper'

require "deployments-app/version"
require 'deployments-app/models/commit'
require 'deployments-app/models/deployment_commit'
require 'deployments-app/models/deployment'

# Move this block to the configuration settings
DataMapper.setup(:default, "mysql://root@localhost/deployments-app-#{ENV['RAILS_ENV'] || ENV['RACK_ENV']}")

module Deployments
  module App
  end
end
