module Deployments
  module App
    module Routes
      module Extensions

        def self.included(base)
          base.class_eval do
            def current_project
              @project ||= Deployments::App::Models::Project.first(:api_key => params[:api_key])
            end
          end
        end

      end
    end
  end
end

