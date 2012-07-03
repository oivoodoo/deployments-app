require 'spec_helper'

include Deployments::App

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
end

