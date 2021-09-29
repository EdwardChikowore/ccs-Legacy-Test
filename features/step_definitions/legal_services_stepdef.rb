Given("I am on the legal services start page") do
  visit '/'
end

Given("I sign in to the buyer account") do
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  sign_in
  page.execute_script('arguments[0].scrollIntoView(true)', common.sign_in_button)
  click_on 'Sign in'
end

Given("I am on {string} page") do |header_text|
  expect(common.header.text).to eq(header_text)
end

And(/^I click on "([^"]*)" option$/) do |option|
  choose option
end

Given("I enter email") do
  page.driver.browser.manage.add_cookie(name: 'crown_marketplace_cookie_settings_viewed', value: 'true')
  fill_in 'Email',	with: ENV['ACCOUNT_USERNAME']
end

Given("I enter password") do
  fill_in 'Password',	with: ENV['ACCOUNT_PASSWORD']
end

Then("I am logged in successfully") do
  expect(common.nav_menu.sign_out_text.text).to eq('Sign out')
end

And(/^I click on child law services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-3').click()")
end

And(/^I click on court of protection services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-4').click()")
end

And(/^I click on Debt recovery services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-6').click()")
end

And(/^I click on Employment services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-12').click()")
end

And(/^I click on North East region$/) do 
  page.execute_script("document.querySelector('#region_UKC').click()")
end

And(/^I click on Contracts services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-3').click()")
end

And(/^I click on Projects services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-20').click()")
end

And(/^I click on Tax services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-17').click()")
end


And(/^I click on Public procurement services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-15').click()")
end
=begin

Then("I click on the link {string}") do |string|
  puts "'central government departments, agencies and public bodies'"
end

Then("the browser navigates to the page {string}") do |string|
  puts "Browser navigates to the page 'https://www.gov.uk/government/organisations'"
end

Then("I click on the back arrow") do
  puts "Click on the back arrow"
end

# Given("I click {string}") do |button_element|
#   click_button button_element
# end


=end
