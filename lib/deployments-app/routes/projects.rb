module Deployments
  module App
    module Routes
      class Projects < Sinatra::Base
        include Deployments::App::Models

        set :views, File.expand_path(settings.root + "/../views/projects")
        set :haml, :layout => :"../layouts/application"

        get '/projects' do
          @projects = Project.all

          haml :index
        end

        get '/projects/new' do
          haml :new
        end

        post '/projects' do
          @project = Project.new(params[:project])
          @project.save
        end
      end
    end
  end
end

