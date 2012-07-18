require 'spec_helper'

include Deployments::App::Routes
include Deployments::App::Models

describe Projects do
  context "on viewing projects list" do
    before { get '/projects' }

    it { last_response.should be_ok }
  end

  context "on new project" do
    before { get '/projects/new' }

    it { last_response.should be_ok }
  end

  context "on create new project" do
    before { post '/projects', :project => attributes_for(:project) }

    it "should rediect to the projects list" do
      follow_redirect!

      last_response.should be_ok
    end

    it { Project.count.should == 1 }
  end
end

