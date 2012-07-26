FactoryGirl.define do
  sequence(:message) { |n| "Added file #{n}" }
  sequence(:sha) { |n| "12ff4a5775#{n}" }

  factory :commit, :class => Deployments::App::Commit do
    sha
    message
    created_at { "2012-05-23 10:39:18 +0300" }
  end
end

