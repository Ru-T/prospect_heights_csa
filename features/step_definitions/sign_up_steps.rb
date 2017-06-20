When(/^I visit the "([^"]*)" page$/) do |page|
  visit page
end

When(/^I enter my first name$/) do
  fill_in 'First name', with: 'Firstname'
end

When(/^I enter my last name$/) do
  fill_in 'Last name', with: 'Lastname'
end

When(/^I enter my desired email address$/) do
  fill_in 'Email', with: 'email@example.com'
end

When(/^I enter my desired phone$/) do
  fill_in 'Phone', with: '555-555-5555'
end

When(/^I click submit$/) do
  click_on 'Save'
end

Then(/^I am presented with a flash message that says "([^"]*)"$/) do |flash|
  expect(page).to have_content(flash)
end

Then(/^I am redirected to the "([^"]*)" page$/) do |page|
  visit page
end
