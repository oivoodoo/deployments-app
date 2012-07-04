require 'spec_helper'

include Deployments::App
include Deployments::App::Models

describe Server do
  let!(:project) { create(:project) }

  context "viewing deployments page without api key" do
    before { get '/deployments' }

    it { last_response.status.should == 401 }
  end

  context "viewing deployments page with api key" do
    before { get "/deployments?api_key=#{project.api_key}" }

    it { last_response.should be_ok }
  end

  context "posting new deployment" do
    before { do_action(project.api_key) }

    it { last_response.should be_ok }

    it { require 'ruby-debug' ; debugger ; project.reload.deployments.should have(1).item }
  end

  context "posting new deployment" do
    it "should create report" do
      expect {
        do_action(project.api_key)
      }.should change { Deployment.count }.by(1)
    end
  end

  context "posting new deployment with wrong api key" do
    it "should not create report" do
      expect {
        do_action("wrong key")
      }.should_not change { Deployment.count }.by(1)
    end
  end

  def do_action(key)
    post "/deployments",
      :deployment => attributes_for(:deployment_with_commits),
      :api_key => key
  end
end

