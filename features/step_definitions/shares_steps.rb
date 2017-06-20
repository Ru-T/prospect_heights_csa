When(/^I have signed up as a shareholder$/) do
  visit "/shareholders/new"
  fill_in 'First name', with: 'Firstname'
  fill_in 'Last name', with: 'Lastname'
  fill_in 'Email', with: 'Firstname@lastname.com'
  fill_in 'Phone', with: '555-444-4444'
  click_on 'Save'
end

When(/^I select a full vegetable share$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I select a half fruit share$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
