include Deployments::App

Given /^I have project with deployments$/ do
  @project = create(:project)
  @deployment = create(:deployment_with_commits, :env => 'staging', :project => @project)
end

When /^I follow by name of the project$/ do
  click_link @project.name
end

