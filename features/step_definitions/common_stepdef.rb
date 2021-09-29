# frozen_string_literal: true

Given(/^I am a logged in user$/) do
  visit '/sign-in'
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  value = common.header_one.text
  sign_in if value == 'Sign in to your legal services buyer account'
end

Given(/^I am a logged in user - buildings account$/) do
  visit '/sign-in'
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  sign_in_building
  puts ENV['HOST']
end

And(/^I click on "(.+)"$/) do |text|
  click_on text
end

Then(/^I click on open all$/) do
  value = common.open_all.text
  common.open_all.click if value == 'Open all sections'
end

Then(/^I click on close all$/) do
  value = common.open_all.text
  common.open_all.click if value == 'Close all sections'
end

And(/^I should see the following error messages$/) do |table|
  expect(page).to have_css('div.govuk-error-summary')
  expect(page.find('.govuk-error-summary__list').find_all('a').map(&:text)).to eq table.transpose.raw.flatten
end

And(/^I click on the "([^"]*)"$/) do |text|
  check text
end

And(/^I am on the "(.+)" page$/) do |header|
  expect(common.header.text).to eq(header)
end

Then(/^I should see the navigation panel has sign out link$/) do
  expect(common.banner.signout_banner.text).to eq('Sign out')
end

And(/^The following text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div h2', text: item)
  end
end

And(/^I click on the "([^"]*)" option$/) do |text|
  choose text
end

And(/^I am on "([^"]*)" and "([^"]*)" page$/) do |heading, sub_heading|
  expect(common.header_one.text).to end_with(heading)
  expect(common.header_three.text).to eq(sub_heading)
end

Then(/^I click on Answer question$/) do
  click_link 'Answer question'
end

Then(/^I click on Download the supplier list$/) do
  click_link 'Download supplier shortlist'
end

Then(/^I click on Back to start$/) do
  click_link 'Back to start'
end

Given('I enter the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

Then(/^I click on continue$/) do
  click_on 'Continue'
end

Then(/^I click on Tees Valley and Durham$/) do
  check 'Tees Valley and Durham'
end

Then(/^I click on save and return$/) do
  click_on 'Save and return'
end

Then(/^I click on save and continue$/) do
  click_on 'Save and continue'
end

Then(/^I click on save and continue button$/) do
  page.execute_script('arguments[0].scrollIntoView(true)', common.save_and_continue)
  click_on 'Save and continue'
end


Then(/^I click on close all on services page$/) do
  value = common.open_all.text
  common.open_all.click if value == 'Close all sections'
end

And(/^The following description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div label span', text: item)
  end
end

Then(/^I click on answer question$/) do
  click_on 'Answer question'
end

And(/^I should see "([^"]*)" and "([^"]*)" error$/) do |heading, error|
  expect(common.header_two.text).to eq(heading)
  expect(dadraft.invoiving_contact_details_error.text).to eq(error)
end

=begin
And(/^I click on "([^"]*)" option$/) do |option|
  find("input[value=#{option}]").click
=end

And(/^The following is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody tr th', text: item)
  end
end

And(/^I should see the following sections:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div  h2', text: item)
  end
end

And(/^The following detail is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody  tr  td', text: item)
  end
end

And(/^I should see error message header "([^"]*)"$/) do |heading|
  expect(common.header_two.text).to eq(heading)
end

And(/^I should see error message header "([^"]*)"$/) do |heading|
  expect(common.header_two.text).to eq(heading)
end

# And(/^The following text is displayed:$/) do |table|
#   table.transpose.raw.flatten.each do |item|
#     expect(page).to have_css('div h2', text: item)
#   end
# end
Then("I should see the following selected services heading") do |table|
  expect(page).('#css-list-basket > div > h2 > span:nth-child(2)').to eq(table)} 
end


=begin
Given("I click on {string} checkbox") do |string|
  check ('child law')
end
=end
=begin
And(/^I am on "([^"]*)" page$/) do |header|
  expect(common.main_page_header).to eq(header)
end


Given(/^I click on manage my buildings link$/) do
  page.execute_script('arguments[0].scrollIntoView(true)', account.account_links[0])
  click_link 'Manage my buildings'
end
=end
