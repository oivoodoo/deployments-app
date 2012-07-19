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
    commit_attributes do
      one = attributes_for(:commit, :sha => "one")
      two = attributes_for(:commit, :sha => "two")

      one_sha = one.delete(:sha)
      two_sha = two.delete(:sha)

      { one_sha => one, two_sha => two }
    end
  end
end

