module Deployments
  module App
    module Routes
      module Authentication

        include Deployments::App::Models

        def self.included(base)
          base.class_eval do
            before '/deployments/*' do
              @project = Project.first(:api_key => params["captures"].last)

              halt 401 unless @project
            end
          end
        end

      end
    end
  end
end

