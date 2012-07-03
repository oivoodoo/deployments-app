module Deployments
  module App
    class Server < Sinatra::Base
      include Routes::Authentication
      include Routes::Deployments
    end
  end
end
