module Deployments
  module App
    module Routes
      class Root < Sinatra::Base
        include Deployments::App::Models

        set :views, File.expand_path(settings.root + "/../views/deployments")
        set :haml, :layout => :"../layouts/application"

        get "/deployments" do
          @deployments = current_project.deployments

          haml :index
        end

        post "/deployments" do
          require 'ruby-debug'
          debugger


          deployment = Deployment.new(params[:deployment])
          deployment.project = current_project
          deployment.save
        end
      end
    end
  end
end

