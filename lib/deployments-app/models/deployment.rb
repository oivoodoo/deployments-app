module Deployments
  module App
    module Models

      class Deployment
        include DataMapper::Resource

        property :id, Serial

        property :author, String
        validates_presence_of :author

        property :env, String
        validates_presence_of :env

        property :host_name, String
        validates_presence_of :host_name

        property :version, String
        validates_presence_of :version

        validates_presence_of :commit_attributes

        has n, :commits, :through => DeploymentCommit
      end
    end
  end
end

