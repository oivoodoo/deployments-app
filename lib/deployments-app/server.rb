module Deployments
  module App
    class Server < Sinatra::Base
      use Routes::Authentication
      use Routes::Root
      use Routes::Projects
    end

    Sinatra::Base.send(:include, Routes::Extensions)
  end
end
