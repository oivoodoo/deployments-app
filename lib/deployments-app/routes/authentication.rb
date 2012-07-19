module Deployments
  module App
    module Routes
      class Authentication < Sinatra::Base
        before '/deployments' do
          projects = Project.all(:api_key => params[:api_key]).count

          return halt(401) if projects.zero?
        end
      end
    end
  end
end

