FactoryGirl.define do
  factory :deployment, :class => Deployments::App::Models::Deployment do
    author "Fred Watson"
    env "staging"
    host_name "staging.example.com"
    version "1.0.3"
  end
end

