When /^I am on the home page$/ do
  visit '/projects'
end

When /^I click on the logo of the website$/ do
  click_on "Deployments"
end

Then /^I should be on the home page$/ do
  current_path.should match(/\/projects/)
end

When /^I click on the home tab$/ do
  click_on "Home"
end

