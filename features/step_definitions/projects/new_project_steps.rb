Given /^I am on the new project page$/ do
  visit '/projects/new'
end

When /^I fill all required fields$/ do
  fill_in 'Name', :with => "Tetris"
end

When /^I save changes$/ do
  click_on "Save"
end

Then /^I should see new project in the list$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I don't fill one required field$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see error notification$/ do
  pending # express the regexp above with the code you wish you had
end

