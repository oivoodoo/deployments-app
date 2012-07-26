include Deployments::App

Given /^I have already deployed project to the (staging|production)$/ do |env|
  @deployment = create(:deployment_with_commits, :env => env, :project => @project)
end

When /^I am on the deployments page$/ do
  visit "/deployments?api_key=#{@project.api_key}"
end

Then /^I should see deployments of (staging|production)$/ do |env|
  deployment = Deployment.first(:env => env)

  within("#deployments #deployments_app_deployment_#{deployment.id}") do
    find('.env').should have_content(deployment.env)
    find('.host_name').should have_content(deployment.host_name)
    find('.author').should have_content(deployment.author)
    find('.version').should have_content(deployment.version)
  end
end

Given /^I have a project$/ do
  @project = create(:project)
end

Then /^I should see commits that was deployed to the (staging|production)$/ do |env|
  deployment = Deployment.first(:env => env)

  within("#deployments .commits") do
    find('.message').should have_content('Added file')
  end
end

