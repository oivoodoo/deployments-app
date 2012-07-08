FactoryGirl.define do
  sequence(:name) { |n| "Tetris #{n}" }

  factory :project, :class => Deployments::App::Models::Project do
    name 'Deployments portal'
    api_key 'key'
  end
end

