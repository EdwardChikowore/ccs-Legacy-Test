When('I click on select all for {string}') do |region|
  quickview.send("#{region} Select All").click
end

And('I open the regions selected') do
  quickview.quick_view_requirements.region.summary.click
end

And('I should see the following regions:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('.filter-component-container', text: item)
  end
end

And('I change region selection') do
  quickview.quick_view_requirements.region.change.click
end

And('the following region is displayed:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-checkboxes', text: item)
  end
end

And('I should see number of region selected text {string}') do |address|
  expect(quickview.basket.amount_selected.text).to eq(address)
end

And('I select all regions') do
  step 'I click on select all for "North East England"'
  step 'I click on select all for "North West England"'
  step 'I click on select all for "Yorkshire and Humber"'
  step 'I click on select all for "East Midlands"'
  step 'I click on select all for "West Midlands"'
  step 'I click on select all for "East England"'
  step 'I click on select all for "London"'
  step 'I click on select all for "South East England"'
  step 'I click on select all for "South West England"'
  step 'I click on select all for "Wales"'
  step 'I click on select all for "Scotland"'
  step 'I click on select all for "Northern Ireland"'
end
