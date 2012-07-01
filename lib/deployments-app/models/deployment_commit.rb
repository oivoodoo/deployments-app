module Deployments
  module App
    module Models
      class DeploymentCommit
        include DataMapper::Resource

        belongs_to :deployment
        belongs_to :commit
      end
    end
  end
end
