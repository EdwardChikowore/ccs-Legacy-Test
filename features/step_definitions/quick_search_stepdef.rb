And(/^The following text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div h2', text: item)
  end
end


And(/^I should see text "([^"]*)"$/) do |address|
  # expect(home.service_basket.service_selected.text).to eq(address)
  expect(home.region_basket.region_div.none_selected.text).to eq(address)
end

And(/^The following region is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-checkboxes', text: item)
  end
end

And(/^I click on select all for North East England$/) do
  home.north_east_select_all.click
end

And(/^I click on select all for North West England$/) do
  home.north_west_select_all.click
end

And(/^I click on select all for Yorkshire and Humber$/) do
  home.yorkshire_humber_select_all.click
end

And(/^I click on select all for East Midlands$/) do
  home.east_midlands_select_all.click
end

And(/^I click on select all for West Midlands$/) do
  home.west_midlands_select_all.click
end

And(/^I click on select all for East England$/) do
  home.east_england_select_all.click
end

And(/^I click on select all for London$/) do
  home.london_select_all.click
end

And(/^I click on select all for South East England$/) do
  home.south_east_select_all.click
end

And(/^I click on select all for South West England$/) do
  home.south_west_select_all.click
end

And(/^I click on select all for Wales$/) do
  home.wales_select_all.click
end

And(/^I click on select all for Scotland$/) do
  home.scotland_select_all.click
end

And(/^I click on select all for Northern Ireland$/) do
  home.northern_ireland_select_all.click
end

And(/^I should see text "([^"]*)" regions selected$/) do |address|
  expect(home.region_basket.region_div.none_selected.text).to eq(address)
end


And(/^I click on the following services:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    check item
  end

end


