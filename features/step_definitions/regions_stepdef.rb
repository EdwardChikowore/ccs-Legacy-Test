# frozen_string_literal: true

And(/^I click on select all for North East England$/) do
  quickview.north_east_select_all.click
end

And(/^I click on select all for North West England$/) do
  quickview.north_west_select_all.click
end

And(/^I click on select all for Yorkshire and Humber$/) do
  quickview.yorkshire_humber_select_all.click
end

And(/^I click on select all for East Midlands$/) do
  quickview.east_midlands_select_all.click
end

And(/^I click on select all for West Midlands$/) do
  quickview.west_midlands_select_all.click
end

And(/^I click on select all for East England$/) do
  quickview.east_england_select_all.click
end

And(/^I click on select all for London$/) do
  quickview.london_select_all.click
end

And(/^I click on select all for South East England$/) do
  quickview.south_east_select_all.click
end

And(/^I click on select all for South West England$/) do
  quickview.south_west_select_all.click
end

And(/^I click on select all for Wales$/) do
  quickview.wales_select_all.click
end

And(/^I click on select all for Scotland$/) do
  quickview.scotland_select_all.click
end

And(/^I click on select all for Northern Ireland$/) do
  quickview.northern_ireland_select_all.click
end

And(/^I should see text "([^"]*)" in the region selection basket$/) do |address|
  expect(quickview.region_basket.region_div.none_selected.text).to eq(address)
end

And(/^I open the regions selected$/) do
  quickview.quick_view_requirements.region.summary.click
end

And(/^I should see the following regions:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('.filter-component-container', text: item)
  end
end

And(/^I change region selection$/) do
  quickview.quick_view_requirements.region.change.click
end

And(/^The following region is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-checkboxes', text: item)
  end
end

And(/^I should see number of region selected text "([^"]*)"$/) do |address|
  expect(quickview.region_basket.region_div.none_selected.text).to eq(address)
end

And(/^I select all regions$/) do
  step 'I click on select all for North East England'
  step 'I click on select all for North West England'
  step 'I click on select all for Yorkshire and Humber'
  step 'I click on select all for East Midlands'
  step 'I click on select all for West Midlands'
  step 'I click on select all for East England'
  step 'I click on select all for London'
  step 'I click on select all for South East England'
  step 'I click on select all for South West England'
  step 'I click on select all for Wales'
  step 'I click on select all for Scotland'
  step 'I click on select all for Northern Ireland'
end
