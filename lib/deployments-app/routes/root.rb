module Deployments
  module App
    module Routes
      class Root < Sinatra::Base
        set :views, File.expand_path(settings.root + "/../views/deployments")
        set :haml, :layout => :"../layouts/application"

        get "/deployments" do
          @deployments = current_project.deployments

          haml :index
        end

        post "/deployments" do
          deployment = Deployment.new(params[:deployment])
          deployment.project = current_project
          deployment.save
        end
      end
    end
  end
end

