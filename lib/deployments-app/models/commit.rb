module Deployments
  module App
    module Models
      class Commit
        include DataMapper::Resource

        property :id, Serial

        property :sha, String, :required => true
        validates_presence_of :sha

        property :message, Text, :required => true
        validates_presence_of :message

        property :created_at, DateTime, :required => true
        validates_presence_of :created_at

        has n, :deployments, :through => Resource
      end
    end
  end
end
