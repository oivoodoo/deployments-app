require 'uniquify'

module Deployments
  module App
    module Models
      class Project
        include DataMapper::Resource
        include Uniquify

        property :id, Serial

        property :name, String, :required => true
        validates_presence_of :name

        property :api_key, String, :required => true
        validates_presence_of :api_key
        validates_uniqueness_of :api_key
        uniquify :api_key

        has n, :deployments
      end
    end
  end
end
