module Deployments
  module App
    class Server < Sinatra::Base
      get '/deployments' do
        "Hello"
      end
    end
  end
end
