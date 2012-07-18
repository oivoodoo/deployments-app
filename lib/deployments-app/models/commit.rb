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

        def self.find_by_sha_or_create(commit)
          existing = first(:sha => commit.first)

          return Commit.create(commit.last) unless existing

          existing
        end
      end
    end
  end
end
