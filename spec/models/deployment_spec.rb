require 'spec_helper'

include Deployments::App

describe Deployment do
  it { should validate_presence_of :author }
  it { should validate_presence_of :env }
  it { should validate_presence_of :version }
  it { should validate_presence_of :host_name }

  it { should validate_presence_of :commit_attributes }
  it { should have_many :commits }

  it { should belong_to :project }

  context "on create" do
    let!(:deployment) { create(:deployment_with_commits) }

    it "should generate commits by raw commit attributes values" do
      deployment.reload.commits == Commit.all
    end

    it "should connect just created commits with deployment" do
      deployment.reload.commits.count.should == 2
    end
  end

  context "with existing commit" do
    let!(:commit) { create(:commit, :sha => "one") }
    let!(:deployment) { create(:deployment_with_commits) }

    it "should not create new one commit by commit attributes" do
      deployment.reload.commits.count.should == 2
    end

    it "should have existing commit in relation" do
      deployment.reload.commits.should include(commit)
    end
  end
end

