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
    let(:one) { attributes_for(:commit) }
    let(:two) { attributes_for(:commit) }
    let(:commit_attributes) { [one, two] }

    before do
      @deployment = build(:deployment,
        :commit_attributes => commit_attributes)
    end

    it "should generate commits by raw commit attributes values" do
      @deployment.save

      @deployment.reload.commits == Commit.all
    end

    it "should connect just created commits with deployment" do
      @deployment.save

      @deployment.reload.commits.all.size.should == 2
    end
  end
end

