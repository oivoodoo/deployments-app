FactoryGirl.define do
  factory :project, :class => Deployments::App::Models::Project do
    name 'Deployments portal'
    api_key 'key'
  end
end

