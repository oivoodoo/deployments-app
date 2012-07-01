require 'spec_helper'

include Deployments::App::Models

describe Deployment do
  it { should validate_presence_of :author }
  it { should validate_presence_of :env }
  it { should validate_presence_of :version }
  it { should validate_presence_of :host_name }

  it { should validate_presence_of :commit_attributes }
  it { should have_many :commits }

  context "on create" do
    it "should generate commits by raw commit attributes values" do
    end
  end
end

