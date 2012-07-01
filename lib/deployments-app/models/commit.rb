module Deployments
  module App
    module Models
      class Commit
        include DataMapper::Resource

        property :id, Serial

        property :sha, String
        validates_presence_of :sha

        property :message, Text
        validates_presence_of :message

        property :created_at, DateTime
        validates_presence_of :created_at
      end
    end
  end
end
