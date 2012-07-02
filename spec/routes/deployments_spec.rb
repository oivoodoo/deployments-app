require 'spec_helper'

include Deployments::App

describe Server do
  context "viewing deployments page" do
    before { get '/deployments' }

    it { last_response.should be_ok }

    it "should provide deployments information" do
    end
  end
end

