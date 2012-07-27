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

module Deployments
  module App
    module Routes
      autoload :Extensions,     'deployments-app/routes/extensions'
      autoload :Root,           'deployments-app/routes/root'
      autoload :Projects,       'deployments-app/routes/projects'
      autoload :Authentication, 'deployments-app/routes/authentication'
    end

    autoload :Server,     'deployments-app/server'
  end
end
