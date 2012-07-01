require 'spec_helper'

include Deployments::App::Models

describe Project do
  it { should validate_presence_of :name }

  it { should validate_presence_of :api_key }
  it { should validate_uniqueness_of :api_key }

  it { should have_many(:deployments) }

  context "on create" do
    let(:project) { build(:project, :api_key => nil) }

    it "should generate uniq api key" do
      project.save

      project.api_key.should be
    end
  end
end

