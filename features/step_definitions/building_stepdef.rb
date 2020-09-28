When(/^I should see number of building text "([^"]*)"$/) do |value|
  expect(common.number_of_buildings.text).to eq(value)
end

Then(/^I click on find address$/) do
  common.find_address.click
end

Then(/^I click on view more building type link$/) do
  common.view_building_type.click
end

Then(/^I select the first building type$/) do
  common.radio_items[0].click
end

Then(/^I click on building type other$/) do
  common.building_type_other.click
end

And(/^I enter "([^"]*)" in building type description text box$/)do |description|
  common.building_type_textbox.set(description)
end

Then(/^I select the first security type$/) do
  common.radio_items[0].click
end

Then(/^I click on security type other$/) do
  common.security_type_other.click
end

And(/^I enter "([^"]*)" in security type description text box$/)do |description|
  common.security_type_textbox.set(description)
end

When(/^I click on the first building on manage my buildings page$/) do
  common.building_change_link[0].click
end


And(/^The first change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[0].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The second change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[1].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The third change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[2].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The fourth change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[3].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The fifth change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[4].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The sixth change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[5].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The seventh change link should navigate to "([^"]*)" page$/)do |text|
  common.building_change_link[6].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The building status tag is "([^"]*)"$/)do |text|
  expect(common.building_status_tag.text).to eq(text)
end