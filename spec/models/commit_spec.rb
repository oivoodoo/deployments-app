require 'spec_helper'

describe Deployments::App::Commit do
  it { should validate_presence_of :sha }
  it { should validate_presence_of :message }
  it { should validate_presence_of :created_at }

  it { should have_many :deployments }
end

