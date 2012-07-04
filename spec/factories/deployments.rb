FactoryGirl.define do
  factory :deployment, :class => Deployments::App::Models::Deployment do
    author "Fred Watson"
    env "staging"
    host_name "staging.example.com"
    version "1.0.3"
    project

    after_build do |deployment|
      deployment.host_name = "#{deployment.env}.example.com"
    end
  end

  factory :deployment_with_commits, :parent => :deployment do
    commit_attributes { [attributes_for(:commit), attributes_for(:commit)] }
  end
end

