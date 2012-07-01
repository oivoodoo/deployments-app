require 'spec_helper'

include Deployments::App::Models

describe Commit do
  it { should validate_presence_of :sha }
  it { should validate_presence_of :message }
  it { should validate_presence_of :created_at }
end

