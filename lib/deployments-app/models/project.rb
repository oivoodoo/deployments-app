require 'uniquify'

module Deployments
  module App
    module Models
      class Project
        include DataMapper::Resource
        include Uniquify

        property :id, Serial

        property :name, String
        validates_presence_of :name

        property :api_key, String
        uniquify :api_key

        has n, :deployments
      end
    end
  end
end
