module Deployments
  module App
    module Routes
      class Root < Sinatra::Base
        include Deployments::App::Models

        set :views, File.expand_path(settings.root + "/../views/deployments")

        get "/deployments" do
          @deployments = current_project.deployments

          haml :index
        end
      end
    end
  end
end

