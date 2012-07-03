module Deployments
  module App
    module Routes
      module Deployments

        def self.included(base)
          base.class_eval do
            get '/deployments/:api_key' do
              @deployments = @project.deployments
            end
          end
        end

      end
    end
  end
end

