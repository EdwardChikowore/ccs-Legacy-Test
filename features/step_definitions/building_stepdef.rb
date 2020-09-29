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

Then(/^I add a new name for the building/) do
  @building_name = "z_auto" + SecureRandom.uuid
  common.building_name.set(@building_name)
end

And(/^I enter "([^"]*)" for the postcode$/)do |text|
  common.postcode_entry.set(text)
end

And(/^I find and select my building$/) do
  step "I find and select \"#{@building_name}\""
  step "I click on \"Save and continue\""
end

And(/^I find and select "([^"]*)"$/) do |text|
  continue = true

  while continue
    if common.text.include? text
      find('legend', text: text).click
      continue = false
    else
      if first('.ccs-pagination')
        common.next_pagination.click
      else
        fail("Cannot find Building with name #{text}")
      end
    end
  end
end


And(/^I add a new building/) do
  step "I click on \"Add a building\""
  step "I am on \"Add a building\" page"
  step "I add a new name for the building"
  step "I find my address"
  step "I click on \"Save and continue\""
  step "I am on \"Internal and external areas\" page"
  step "I enter 100 for external area"
  step "I enter 9 for internal area"
  step "I click on \"Save and continue\""
  step "I am on \"Building type\" page"
  step "I select the first building type"
  step "I click on \"Save and continue\""
  step "I am on \"Security clearance\" page"
  step "I select the first security type"
  step "I click on \"Save and return to building details summary\""
  step "I am on the \"Building details summary\" page"
  step "I click on \"Return to buildings\""
  step "I am on \"Buildings\" page"
end

And(/^I find my address/) do
  step "I enter \"ST161AA\" for the postcode"
  step "I click on find address"
  step "I select the building address \"Stafford Delivery Office\" from the drop down option"
end