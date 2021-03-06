module Deployments
  module App
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

      belongs_to :project

      has n, :commits, :through => Resource

      before :create do
        self.commit_attributes.each do |sha, commit|
          self.commits << Commit.find_by_sha_or_create(commit.merge(:sha => sha))
        end
      end
    end
  end
end

