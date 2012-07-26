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

module Deployments
  module App
    autoload :Commit,       'deployments-app/models/commit'
    autoload :Deployment,   'deployments-app/models/deployment'
    autoload :Project,      'deployments-app/models/project'

    module Routes
      autoload :Extensions,     'deployments-app/routes/extensions'
      autoload :Root,           'deployments-app/routes/root'
      autoload :Projects,       'deployments-app/routes/projects'
      autoload :Authentication, 'deployments-app/routes/authentication'
    end

    autoload :Server,     'deployments-app/server'
  end
end
