require 'rubygems'

require 'dm-core'
require 'dm-validations'
require 'dm-migrations'
require 'dm-transactions'
require 'dm-serializer'
require 'dm-timestamps'
require 'dm-types'
require 'dm-constraints'

require 'sinatra'

require "deployments-app/version"
require 'deployments-app/models/commit'
require 'deployments-app/models/deployment'
require 'deployments-app/models/project'

require 'deployments-app/routes/authentication'
require 'deployments-app/routes/root'
require 'deployments-app/routes/extensions'
require 'deployments-app/server'

module Deployments
  module App
  end
end
