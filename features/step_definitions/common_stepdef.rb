Given('I am a logged in user for {string}') do |framework|
  visit "/facilities-management/#{framework}/sign-in"
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  value = common.header_one.text
  sign_in if value == 'Sign in to your account'
end

Given('I am a logged in user - buildings account - for {string}') do |framework|
  visit "/facilities-management/#{framework}/sign-in"
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  sign_in_building
end

When('I click on {string}') do |text|
  click_on text
end

When('I am on {string} page') do |text|
  expect(common.header_one.text).to end_with(text)
end

Then('I click on open all') do
  value = common.open_all.text

  common.open_all.click if value == "Open all\nsections"
end

Then('I click on close all') do
  value = common.open_all.text

  common.open_all.click if value == 'Close all sections'
end

Then('I should see the following error messages:') do |table|
  expect(page).to have_css('div.govuk-error-summary')
  expect(page.find('.govuk-error-summary__list').find_all('a').map(&:text)).to eq table.transpose.raw.flatten
end

And('I check {string}') do |text|
  check text
end

And('I am on the {string} page') do |header|
  expect(common.header_two.text).to eq(header)
end

Then('I should see the navigation panel has sign out link') do
  expect(common.banner.signout_banner.text).to eq('Sign out')
end

And('the following text is displayed:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div h2', text: item)
  end
end

And('I am on {string} and {string} page') do |heading, sub_heading|
  expect(common.header_one.text).to end_with(heading)
  expect(common.header_three.text).to eq(sub_heading)
end

When('I enter the following details into the form:') do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

And('I click on the link with text {string}') do |button_text|
  page.find('a', text: button_text).send_keys(:return)
end

Then('I select {string} from the address drop down') do |address|
  common.address_drop_down.find(:option, address).select_option
end

Then('I open the {string} details') do |summary_text|
  page.find('details > summary', text: summary_text).click
end

And('the following is displayed:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody tr th', text: item)
  end
end

And('I should see the following sections:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div  h2', text: item)
  end
end

And('the following detail is displayed:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody  tr  td', text: item)
  end
end

Then('I create a new procurement') do
  step 'I am a logged in user - buildings account - for "RM3830"'
  step 'I am on your account page'
  step 'I click on "Start a procurement"'
  step 'I am on "What happens next" page'
  step 'I click on "Continue"'
  step 'I am on "Contract name" page'
  step 'I add contract name'
  step 'I click on "Save and continue"'
  step 'I am on "Requirements" page'
end
