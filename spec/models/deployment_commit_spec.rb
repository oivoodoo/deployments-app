require 'spec_helper'

include Deployments::App::Models

describe DeploymentCommit do
  it { should belong_to :deployment }
  it { should belong_to :commit }
end
