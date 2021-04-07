# frozen_string_literal: true

Then(/^I click on lot 1a$/) do
  results.estimated_cost_option.click
end

Then(/^I should see the price displayed (.+)$/) do |price|
  expect(results.results_page.estimated_cost[0].text).to eq(price)
end

Then(/^I click on the Direct award route to market$/) do
  results.market_route.direct_award.click
end

Then(/^I click on continue to direct award$/) do
  click_on 'Continue to direct award'
end

And(/^I am on results page$/) do
  expect(common.header_one.text).to end_with('Results')
end

Then('there should be no options') do
  expect(results.available_route_to_market.text).to eq 'Further competition'
end

Then(/^I proceed to the contract details page/) do
  step 'I am on results page'
  step 'I click on the Direct award route to market'
  step 'I click on continue'
  step 'I click on continue to direct award'
  step 'I click on continue to direct award'
  step 'I click on continue'
end

Then(/^I should see "([^"]*)" as the only available route to market$/) do |market_route|
  expect(dadraft.fc_header.text).to eq(market_route)
end

And(/^I should see the partial price value (.+)$/) do |value|
  expect(results.choose_contract_value[1].text).to start_with(value)
end

Then(/^unpriced service "([^"]*)" should be displayed$/) do |unpriced_service|
  results.choose_contract.summary_text.click
  expect(results.choose_contract.unpriced_service.text).to eq(unpriced_service)
end

Then('I can select the following lots:') do |lots|
  lot_numbers = lots.raw.flatten

  expect(lot_numbers).to match results.choose_contract_value_options.map(&:value)
end

Then('I cannot select the lot') do
  expect(page).not_to have_selector 'input[type="radio"]'
end
