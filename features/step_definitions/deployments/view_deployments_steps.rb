Given /^I have already deployed project to the (staging|production)$/ do |env|
  @deployment = build(:deployment, :env => env)
  @deployment.commits << create(:commit)
  @deployment.save
end

When /^I am on the deployments page$/ do
  visit '/deployments'
end

Then /^I should see deployments of (staging|production)$/ do |env|
  within('#deployments') do
    find('.env').should have_content(@deployment.env)
    find('.host_name').should have_content(@deployment.host_name)
    find('.author').should have_content(@deployment.author)
    find('.version').should have_content(@deployment.version)
  end
end

