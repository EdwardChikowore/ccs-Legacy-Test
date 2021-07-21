Then('I select building {int}') do |building_number|
  select_building(building_number)
end

When('I select buildings {int} to {int}') do |start_number, end_number|
  (start_number..end_number).each do |building_number|
    select_building(building_number)
  end
end

def select_building(building_number)
  building.find("label[for='facilities_management_rm3830_procurement_procurement_buildings_attributes_#{building_number - 1}_active']").click
end

And('the following building summary text is displayed:') do |table|
  expect(building.number_of_buildings.text).to eq(table.transpose.raw.flatten.join("\n"))
end

When('I click on the first building') do
  common.answer_question.click
end

When('I add building name') do
  @building_name = "z_auto#{SecureRandom.uuid}"
  building.building_name.set(@building_name)
end

When('I enter the building name {string}') do |building_name|
  building.building_name.set(building_name)
end

Then('I click on find address') do
  building.find_address.click
end

Then('I select the building address {string} from the drop down option') do |address|
  find("[data-address_line_1='#{address}']").select_option
  sleep 1
end

And('I enter {int} for internal area') do |value|
  building.building_internal_area.set(value)
end

And('I enter {int} for external area') do |value|
  building.building_external_area.set(value)
end

Then('I select the first building type') do
  building.radio_items[0].click
end

Then('I click on security type other') do
  building.security_type_other.click
end

And('I enter {string} in security type description text box') do |description|
  building.security_type_textbox.set(description)
end

And('I find and select my building') do
  step "I find and select '#{@building_name}'"
  step 'I click on "Save and continue"'
end

And('the building address name displayed is {string}') do |value|
  expect(building.building_address.text).to eq(value)
end

And('I select region {string} from the drop down option') do |address|
  find("[data-address_region='#{address}']").select_option
end

And('the building region text displayed is {string}') do |value|
  expect(building.building_region.text).to eq(value)
  sleep 1
end

Then('I click on view more building types') do
  building.view_building_type.click
end

Then('I click on building type other') do
  building.building_type_other.click
end

And('I enter {string} in building type description text box') do |description|
  building.building_type_textbox.set(description)
end

Then('I change the {string}') do |building_detail|
  building.building_details_summary.send(building_detail.to_sym).link.click
end

And('the building status tag is {string}') do |text|
  expect(building.building_status_tag.text).to eq(text)
end

Then('I select the first security type') do
  building.radio_items[0].click
end

When('I click on the first building on manage my buildings page') do
  building.building_change_link[0].click
end

And('I enter {string} for the postcode') do |text|
  building.postcode_entry.set(text)
end

When('I select the building type of {string}') do |building_type|
  choose(building_type)
end

When('I select the security clearance of {string}') do |security_clearance|
  choose(security_clearance)
end

Then('I find and select the following buildings:') do |building_names|
  building_names.raw.flatten.each do |building_name|
    step "I find and select '#{building_name}'"
  end
end

And('I find and select {string}') do |text|
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

And('I add a new building') do
  step 'I click on "Add a building"'
  step 'I am on "Add a building" page'
  step 'I add building name'
  step 'I enter "ST161AA" for the postcode'
  step 'I click on find address'
  step 'I select the building address "Stafford Delivery Office" from the drop down option'
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
