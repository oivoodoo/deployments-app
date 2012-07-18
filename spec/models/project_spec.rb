require 'spec_helper'

include Deployments::App::Models

describe Project do
  it { should validate_presence_of :name }

  it { should have_many(:deployments) }

  context "on create" do
    let(:project) { create(:project) }

    it "should generate uniq api key" do
      project.reload.api_key.should be
    end
  end

  context "on save" do
    let!(:project) { create(:project) }

    before { @api_key = project.api_key }

    context "api key" do
      before { project.save }

      it "should be the same" do
        project.reload.api_key.should == @api_key
      end
    end
  end
end

