# frozen_string_literal: true

Then(/^I select first building$/) do
  building.building_one.address.click
end

When(/^I should see number of building text "([^"]*)"$/) do |value|
  expect(building.number_of_buildings.text).to include(value)
end

And(/^The following building summary text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(building.number_of_buildings.text).to eq(item)
  end
end

Then(/^I click on the first building$/) do
  common.answer_question.click
end

Then(/^I select second building$/) do
  building.building_two.address.click
end

Then(/^I select third building$/) do
  building.building_three.address.click
end

Then(/^I select fourth building$/) do
  building.building_four.address.click
end

Then(/^I select fifth building$/) do
  building.building_five.address.click
end

Then(/^I select sixth building$/) do
  building.building_six.address.click
end

Then(/^I select seventh building$/) do
  building.building_seven.address.click
end

Then(/^I select eighth building$/) do
  building.building_eight.address.click
end

Then(/^I select ninth building$/) do
  building.building_nine.address.click
end

Then(/^I select tenth building$/) do
  building.building_ten.address.click
end

Then(/^I add building name$/) do
  name = "z_auto#{SecureRandom.uuid}"
  building.building_name.set(name)
end

Then(/^I click on find address$/) do
  building.find_address.click
end

And(/^I select the building address "([^"]*)" from the drop down option$/) do |address|
  find("[data-address_line_1='#{address}']").select_option
  sleep 1
end

And(/^I enter (.+) for internal area$/) do |value|
  building.building_internal_area.set(value)
end

And(/^I enter (.+) for external area$/) do |value|
  building.building_external_area.set(value)
end

Then(/^I select the first building type$/) do
  building.radio_items[0].click
end

Then(/^I click on security type other$/) do
  building.security_type_other.click
end

And(/^I enter "([^"]*)" in security type description text box$/) do |description|
  building.security_type_textbox.set(description)
end

And(/^I find and select my building$/) do
  step "I find and select \"#{@building_name}\""
  step 'I click on save and continue button'
end

And(/^The cleaning of external area volume details displayed are:$/) do |table|
  table.transpose.raw.flatten.each do |services|
    expect(page).to have_css('[id="G.5-external_area-volume"]', text: services)
  end
end

And(/^The building address name displayed is "([^"]*)"$/) do |value|
  expect(building.building_address.text).to eq(value)
end

And(/^I select region "([^"]*)" from the drop down option$/) do |address|
  find("[data-address_region='#{address}']").select_option
end

And(/^The building region text displayed is "([^"]*)"$/) do |value|
  expect(building.building_region.text).to eq(value)
  sleep 1
end

Then(/^I click on view more building type link$/) do
  building.view_building_type.click
end

Then(/^I click on building type other$/) do
  building.building_type_other.click
end

And(/^I enter "([^"]*)" in building type description text box$/) do |description|
  building.building_type_textbox.set(description)
end

And(/^The first change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[0].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The second change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[1].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The third change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[2].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The fourth change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[3].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The fifth change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[4].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The sixth change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[5].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The seventh change link should navigate to "([^"]*)" page$/) do |text|
  building.building_change_link[6].click
  expect(common.header_one.text).to end_with(text)
end

And(/^The building status tag is "([^"]*)"$/) do |text|
  expect(building.building_status_tag.text).to eq(text)
end

Then(/^I select the first security type$/) do
  building.radio_items[0].click
end

When(/^I click on the first building on manage my buildings page$/) do
  building.building_change_link[0].click
end

Then(/^I add a new name for the building/) do
  @building_name = "z_auto#{SecureRandom.uuid}"
  building.building_name.set(@building_name)
end

And(/^I enter "([^"]*)" for the postcode$/) do |text|
  building.postcode_entry.set(text)
end

And(/^I find and select "([^"]*)"$/) do |text|
  continue = true

  while continue
    if common.text.include? text
      find('label', text: text).click
      continue = false
    elsif first('.ccs-pagination')
      building.next_pagination.click
    else
      raise("Cannot find Building with name #{text}")
    end
  end
end

And(/^I add a new building/) do
  step 'I click on "Add a building"'
  step 'I am on "Add a building" page'
  step 'I add building name'
  step 'I find my address'
  step 'I click on "Save and continue"'
  step 'I am on "Internal and external areas" page'
  step 'I enter 100 for external area'
  step 'I enter 9 for internal area'
  step 'I click on "Save and continue"'
  step 'I am on "Building type" page'
  step 'I select the first building type'
  step 'I click on "Save and continue"'
  step 'I am on "Security clearance" page'
  step 'I select the first security type'
  step 'I click on "Save and return to building details summary"'
  step 'I am on the "Building details summary" page'
  step 'I click on "Return to buildings"'
  step 'I am on "Buildings" page'
end

And(/^I find my address/) do
  step 'I enter "ST161AA" for the postcode'
  step 'I click on find address'
  step 'I select the building address "Stafford Delivery Office" from the drop down option'
end
