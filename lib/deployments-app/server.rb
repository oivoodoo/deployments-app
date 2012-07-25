module Deployments
  module App
    class Server < Sinatra::Base
      use Routes::Authentication
      use Routes::Root
      use Routes::Projects

      set :public_folder, File.expand_path(File.dirname(__FILE__) + "/../../public")

      def self.development_db_path
        "mysql://root@localhost/deployments-app-development"
      end

      configure do
        DataMapper.setup(:default, ENV["DATABASE_URL"] || self.development_db_path)
        DataMapper.auto_upgrade!
      end
    end

    Sinatra::Base.send(:include, Routes::Extensions)
  end
end
