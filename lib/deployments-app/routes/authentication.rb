module Deployments
  module App
    module Routes
      class Authentication < Sinatra::Base
        include Deployments::App::Models

        before '/deployments' do
          projects = Project.count(:api_key => params[:api_key])

          return halt(401) if projects.zero?
        end
      end
    end
  end
end

