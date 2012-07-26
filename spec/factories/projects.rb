FactoryGirl.define do
  sequence(:name) { |n| "Tetris #{n}" }

  factory :project, :class => Deployments::App::Project do
    name 'Deployments portal'
  end
end

