# frozen_string_literal: true

And(/^I select all services listed for Management of billable works$/) do
  quickview.management_billable.select_all.click
end

And(/^I select all cafm service$/) do
  quickview.cafm.select_all.click
end

And(/^I select all catering services$/) do
  quickview.catering.select_all.click
end

And(/^The following catering services displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-4', text: item)
  end
end

And(/^I select all cleaning services$/) do
  quickview.cleaning.select_all.click
end

And(/^The following cleaning services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-5', text: item)
  end
end

And(/^I select all helpdesk services$/) do
  quickview.helpdesk.select_all.click
end

And(/^The following helpdesk service is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-12', text: item)
  end
end

And(/^I select all horticultural services$/) do
  quickview.horticultural.select_all.click
end

And(/^The following horticultural services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-2', text: item)
  end
end

And(/^I select all maintenance services$/) do
  quickview.maintenance.select_all.click
end

And(/^The following maintenance services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-1', text: item)
  end
end

And(/^I select all miscellaneous services$/) do
  quickview.miscellaneous.select_all.click
end

And(/^The following miscellaneous services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-10', text: item)
  end
end

And(/^I select all reception services$/) do
  quickview.reception.select_all.click
end

And(/^The following reception services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-7', text: item)
  end
end

And(/^I select all security services$/) do
  quickview.security.select_all.click
end

And(/^The following security services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-8', text: item)
  end
end

And(/^I select all statutory services$/) do
  quickview.statutory.select_all.click
end

And(/^The following statutory services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-3', text: item)
  end
end

And(/^I select all waste services$/) do
  quickview.waste.select_all.click
end

And(/^The following waste services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-9', text: item)
  end
end

And(/^I select all workplace services$/) do
  quickview.workplace.select_all.click
end

And(/^The following workplace services are displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#accordion-with-summary-sections-for-choose-services-content-6', text: item)
  end
end

And(/^I should see text "([^"]*)" in the service selection basket$/) do |address|
  expect(quickview.service_basket.service_div.none_selected.text).to eq(address)
end

And(/^I open the services selected$/) do
  quickview.quick_view_requirements.service.summary.click
end

And(/^I should see the following services:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('.filter-component-container', text: item)
  end
end

And(/^I change service selection$/) do
  quickview.quick_view_requirements.service.change.click
end

And(/^The service caption text is displayed$/) do
  expect(quickview.quick_service_caption.text).to eq("Choose all facilities management services required within your estate, even if you want services in just one building. To see further information about services click on the 'Further details' link under each service. Alternatively, open the service specification document below and go to the relevant section.")
end

And(/^I click on the following services:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    check item
  end
end

Then(/^I select all services for first building$/) do
  requirements.checkbox_multiple_building.click
  click_on 'Save and return'
end

Then(/^I select all services for second building$/) do
  requirements.checkbox_multiple_building.click
  click_on 'Save and return'
end

And(/^I select all services$/) do
  step 'I select all maintenance services'
  step 'I select all horticultural services'
  step 'I select all statutory services'
  step 'I select all catering services'
  step 'I select all cleaning services'
  step 'I select all workplace services'
  step 'I select all reception services'
  step 'I select all security services'
  step 'I select all waste services'
  step 'I select all miscellaneous services'
  step 'I select all cafm service'
  step 'I select all helpdesk services'
  step 'I select all services listed for Management of billable works'
end
