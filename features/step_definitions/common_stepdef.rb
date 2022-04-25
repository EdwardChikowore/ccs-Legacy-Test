# frozen_string_literal: true

Given("I sign in to the buyer account") do
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  sign_in
  page.execute_script('arguments[0].scrollIntoView(true)', common.sign_in_button)
  click_on 'Sign in'
end

Then("I am logged in successfully") do
  expect(common.nav_menu.sign_out_text.text).to eq('Sign out')
end

And(/^I click on "(.+)"$/) do |text|
  click_on text
end


And(/^I click on "([^"]*)" option$/) do |option|
  choose option
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

Given("I am on {string} page") do |header_text|
  expect(common.header.text).to eq(header_text)
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

# And(/^I should see error message header "([^"]*)"$/) do |heading|
#   expect(common.header_two.text).to eq(heading)
# end

Then("I should see the following selected services heading") do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div  h2', text: item)
  end
end

And("I check {string}") do |text|
  check text 
end

When("I check <region>") do |table|
  check text 
end

When("I check {string}:") do |string, table|
check table
end

And(/^I should see header three "([^"]*)"$/) do |heading|
  expect(common.header_three.text).to eq(heading)
end

Then(/^I should see the rates table$/) do |table|
  binding.pry
  page_text = common.rates_table.text
table.transpose.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

When("I click on a supplier name") do
  common.results_list[0].click
  #common.results_list_mc
end

And(/^I should see supplier details header "([^"]*)"$/) do |heading|
  expect(common.supplier_details_page_title.text).to eq(heading)
end

And(/^The excel file "(.+)" should download successfully$/) do |filename|
  sleep 1
  name = getDownLoadedFileName
  expect(name).to start_with(filename)
  expect(name).to end_with('.xlsx')
  closeBrowserTab
end


Then(/^I click Back$/) do
  click_link 'Back'
end