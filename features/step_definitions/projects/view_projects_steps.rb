Given /^I have few projects$/ do
  @projects = []
  2.times { @projects << create(:project) }
end

When /^I am on the projects page$/ do
  visit '/projects'
end

Then /^I should see list of projects$/ do
  @projects.each do |project|
    within("#projects #deployments_app_models_project_#{project.id}") do
      find('.name').should have_content(project.name)
      find('.api_key').should have_content(project.api_key)
    end
  end
end

