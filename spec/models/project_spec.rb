require 'spec_helper'

include Deployments::App::Models

describe Project do
  it { should validate_presence_of :name }

  it { should validate_presence_of :api_key }
  it { should validate_uniqueness_of :api_key }

  it { should have_many(:deployments) }

  context "on build" do
    let(:project) { build(:project) }

    it "should generate uniq api key" do
      project.api_key.should be
    end
  end
end

