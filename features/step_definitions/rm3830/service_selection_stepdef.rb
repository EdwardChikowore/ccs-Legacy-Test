And('the following {string} are displayed:') do |service_group, table|
  service_elements = quickview.send(service_group).service_names
  service_names = table.raw.flatten

  expect(service_elements.size).to eq(service_names.size)

  service_elements.zip(service_names).each do |element, text|
    expect(element).to have_text(text)
  end
end

Then('the following descriptions for {string} are displayed:') do |service_group, table|
  service_elements = quickview.send(service_group).service_descriptions
  service_descriptions = table.raw.flatten

  expect(service_elements.size).to eq(service_descriptions.size)

  service_elements.zip(service_descriptions).each do |element, text|
    expect(element).to have_text(text)
  end
end

When('I select all {string}') do |service_group|
  quickview.send(service_group).select_all.click
end

And('I should see text {string} in the selection basket') do |address|
  expect(quickview.basket.amount_selected.text).to eq(address)
end

And('I open the services selected') do
  quickview.quick_view_requirements.service.summary.click
end

And('I should see the following services:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('.filter-component-container', text: item)
  end
end

And('I change service selection') do
  quickview.quick_view_requirements.service.change.click
end

And('the service caption text is displayed') do
  expect(quickview.quick_service_caption.text).to eq(
    "Choose all facilities management services required within your estate, even if you want services in just one building. To see further information about services click on the 'Further details' link under each service. Alternatively, open the service specification document below and go to the relevant section."
  )
end

And('I click on the following services:') do |table|
  table.transpose.raw.flatten.each do |item|
    check item
  end
end

Then('I select all services for the building') do
  requirements.checkbox_multiple_building.click
  click_on 'Save and return'
end

And('I select all services') do
  step 'I select all "Maintenance services"'
  step 'I select all "Horticultural services"'
  step 'I select all "Statutory obligations"'
  step 'I select all "Catering services"'
  step 'I select all "Cleaning services"'
  step 'I select all "Workplace FM services"'
  step 'I select all "Reception services"'
  step 'I select all "Security services"'
  step 'I select all "Waste services"'
  step 'I select all "Miscellaneous FM services"'
  step 'I check "CAFM system"'
  step 'I check "Helpdesk services"'
  step 'I check "Management of billable works"'
end
