Then('I choose lot 1a') do
  results.estimated_cost_option.click
end

Then('I should see the price displayed {string}') do |price|
  expect(results.results_page.estimated_cost[0].text).to eq(price)
end

When('I click on the {string} route to market') do |route_to_market|
  results.market_route.send(route_to_market.to_sym).click
end

Then('there should be no options') do
  expect(results.available_route_to_market.text).to eq 'Further competition'
end

Then('I proceed to the contract details page') do
  step 'I am on "Results" page'
  step 'I click on the "Direct award" route to market'
  step 'I click on "Continue"'
  step 'I click on "Continue to direct award"'
  step 'I click on "Continue to direct award"'
  step 'I click on "Continue"'
end

And('I should see the partial price value {string}') do |value|
  expect(results.choose_contract_value[1].text).to start_with(value)
end

Then('unpriced service {string} should be displayed') do |unpriced_service|
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
