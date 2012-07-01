module Deployments
  module App
    module Models

      class Deployment
        include DataMapper::Resource

        property :id, Serial

        property :author, String, :required => true
        validates_presence_of :author

        property :env, String, :required => true
        validates_presence_of :env

        property :host_name, String, :required => true
        validates_presence_of :host_name

        property :version, String, :required => true
        validates_presence_of :version

        attr_accessor :commit_attributes
        validates_presence_of :commit_attributes

        has n, :commits, :through => Resource

        after :save do
          self.commit_attributes.each do |commit|
            self.commits.create(commit)
          end
        end
      end
    end
  end
end

