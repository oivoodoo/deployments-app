require 'spec_helper'

include Deployments::App::Models

describe Deployment do
  it { should validates_presence_of(:author) }
  it { should validates_presence_of(:env) }
  it { should validates_presence_of(:version) }
  it { should validates_presence_of(:host_name) }
  it { should validates_presence_of(:commit_attributes) }

  context "on create" do
    
  end
end

