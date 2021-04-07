# frozen_string_literal: true

And(/^I am on your account page$/) do
  expect(account.your_account_title.text).to eq('Your account')
end

Then(/^the following home page content is displayed:$/) do |table|
  page_text = account.your_account_page.text
  table.transpose.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

Given(/^I click on start a procurement$/) do
  page.execute_script('arguments[0].scrollIntoView(true)', account.account_panels[1])
  click_on 'Start a procurement'
end

Given(/^I visit the FM start page$/) do
  common.load
end
