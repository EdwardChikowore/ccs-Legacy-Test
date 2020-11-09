Then(/^I enter the number of year as "([^"]*)"$/) do |years|
  requirements.initial_call_off_period.set(years)
end

And(/^I enter values for the initial call-off period date$/) do
  requirements.initial_start_date.day.set(12)
  requirements.initial_start_date.month.set(12)
  requirements.initial_start_date.year.set(2024)
end

Then(/^I enter the day as "([^"]*)"$/) do |day|
  requirements.initial_start_date.day.set(day)
end

Then(/^I enter the month as "([^"]*)"$/) do |month|
  requirements.initial_start_date.month.set(month)
end

Then(/^I enter the year as "([^"]*)"$/) do |year|
  requirements.initial_start_date.year.set(year)
end

And(/^I enter values for initial call-off period/) do
  requirements.initial_call_off_period.set(4)
  step "I enter values for the initial call-off period date"
end

Then(/^I enter the mobilisation period for "([^"]*)" weeks$/) do |weeks|
  requirements.mobilisation_radio.period.set(weeks)
end

Then(/^I click on add another extension period$/) do
  requirements.procurement_extension_radio.add_extension_period.click
end

Then(/^I enter (.+) year for extension period (.+)$/) do |year, extension_period|
  requirements.procurement_extension_radio.send("extension_#{extension_period}").set(year)
end

Then(/^I enter the mobilisation period for (\d+) weeks$/) do |weeks|
  requirements.mobilisation_radio.period.set(weeks)
end

And(/^The contract name status tag is "([^"]*)"$/)do |text|
  expect(requirements.contract_name_status_tag.text).to eq(text)
end

And(/^The estimated annual cost status tag is "([^"]*)"$/)do |text|
  expect(requirements.estimated_status_tag.text).to eq(text)
end

And(/^The TUPE status tag is "([^"]*)"$/)do |text|
  expect(requirements.tupe_status_tag.text).to eq(text)
end

And(/^The contract period status tag is "([^"]*)"$/)do |text|
  expect(requirements.contract_period_status_tag.text).to eq(text)
end

And(/^The buildings status tag is "([^"]*)"$/)do |text|
  expect(requirements.buildings_status_tag.text).to eq(text)
end

And(/^The services status tag is "([^"]*)"$/)do |text|
  expect(requirements.services_status_tag.text).to eq(text)
end

And(/^The assigning services to buildings status tag is "([^"]*)"$/) do |text|
  expect(requirements.assigned_status_tag.text).to eq(text)
end

And(/^The service requirements status tag is "([^"]*)"$/)do |text|
  expect(requirements.requirements_status_tag.text).to eq(text)
end

And(/^The following summary text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.service_summary.text).to eq(item)
  end
end

Then(/^I select standard A$/) do
  requirements.service_standard.value_a.click
end

Then(/^I select standard B$/) do
  requirements.service_standard.value_b.click
end

Then(/^I select standard C$/) do
  requirements.service_standard.value_c.click
end

And(/^The assigning buildings to services status tag is "([^"]*)"$/)do |text|
  expect(requirements.assigned_status_tag.text).to eq(text)
end

Then(/^I click on select all$/) do
  requirements.select_all.click
end

And(/^The following contract period is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.length.text).to eq(item)
  end
end

And(/^The following contract period description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.contract_description.text).to eq(item)
  end
end

And(/^The following mobilisation length is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.mobilisation_length.text).to eq(item)
  end
end

And(/^The following mobilisation description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.mobilisation_description.text).to eq(item)
  end
end

And(/^The following call-off extension is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_extension.text).to eq(item)
  end
end

And(/^The following call-off length 1 is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_1_length.text).to eq(item)
  end
end

And(/^The following call-off length 1 description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_1_description.text).to eq(item)
  end
end

And(/^The following call-off length 2 is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_2_length.text).to eq(item)
  end
end

And(/^The following call-off length 2 description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_2_description.text).to eq(item)
  end
end

And(/^The following call-off length 3 is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_3_length.text).to eq(item)
  end
end

And(/^The following call-off length 3 description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_3_description.text).to eq(item)
  end
end

And(/^The following call-off length 4 is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_4_length.text).to eq(item)
  end
end

And(/^The following call-off length 4 description is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(requirements.contract_period.call_off_4_description.text).to eq(item)
  end
end

Then(/^I am on estimated annual cost page$/) do
  expect(common.header_one.text).to end_with("Estimated annual cost")
end

Then(/^I select no option for estimated annual cost$/) do
  choose 'facilities_management_procurement_estimated_cost_known_false'
end

Then(/^I select no option for tupe$/) do
  choose 'facilities_management_procurement_tupe_false'
end

And(/^I am on contract period page$/) do
  expect(common.header_one.text).to end_with("Contract period")
end


Then(/^I select no option for tupe required$/) do
  choose "facilities_management_procurement_mobilisation_period_required_false"
end

And(/^I select no option for optional call-off extension$/) do
  choose "facilities_management_procurement_extensions_required_false"
end

Then(/^I click on return to requirements$/) do
  click_on 'Return to requirements'
end

Then(/^I click on buildings link$/) do
  click_on 'Buildings'
end

Then(/^I click on assigning services to buildings link$/) do
  click_on 'Assigning services to buildings'
end

Then(/^I click on the first building on the page$/) do
  requirements.answer_question.click
end

Then(/^I click on service standards change link$/) do
  service_requirements.change_link[1].click
end

And(/^I enter (.+) for service hours$/) do |value|
  service_requirements.number_of_hours.set(value)
  service_requirements.service_hours_requirement.set('Test one')
end

And(/^I enter (.+) for routine cleaning - scenario four$/) do |value|
  common.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for general waste scenario one b$/) do |value|
  common.service_info_volume.general_waste.set(value)
end

And(/^I enter (.+) for general waste for scenario zero$/) do |value|
  common.service_info_volume.general_waste_three.set(value)
end

And(/^I enter (.+) for routine cleaning for scenario zero$/) do |value|
  common.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for mobile cleaning services$/) do |value|
  common.service_info_volume.mobile_cleaning.set(value)
end

And(/^I enter (.+) for routine cleaning - AV scenario four$/) do |value|
  common.service_info_volume.routine_cleaning_five.set(value)
end

And(/^I enter (.+) for general waste - AV scenario four$/) do |value|
  common.service_info_volume.general_waste_five.set(value)
end

And(/^I enter (.+) for recycled waste - AV scenario four$/) do |value|
  common.service_info_volume.recycled_waste_three.set(value)
end

And(/^I enter (.+) for mobile cleaning service two$/) do |value|
  common.service_info_volume.mobile_cleaning_two.set(value)
end

And(/^I enter (.+) for portable appliance testing$/) do |value|
  service_requirements.portable_appliance_volume.set(value)
end

And(/^I enter (.+) for cleaning of external areas$/) do |value|
  service_requirements.cleaning_external_area.set(value)
end

And(/^I enter (.+) for mobile cleaning service$/) do |value|
  service_requirements.mobile_cleaning_volume.set(value)
end

And(/^I enter (.+) for routine cleaning$/) do |value|
  service_requirements.routine_cleaning_volume.set(value)
end

And(/^I enter (.+) for mobile cleaning$/) do |value|
  service_requirements.mobile_cleaning_volume.set(value)
end

And(/^I enter (.+) for classified waste$/) do |value|
  service_requirements.classified_waste_volume.set(value)
end

And(/^I enter (.+) for feminine hygiene waste$/) do |value|
  service_requirements.feminine_hygiene_volume.set(value)
end

And(/^I enter (.+) for general waste$/) do |value|
  service_requirements.general_waste_volume.set(value)
end

And(/^I enter (.+) for recycled waste$/) do |value|
  service_requirements.recycled_waste_volume.set(value)
end

And(/^I enter (.+) for hazardous waste$/) do |value|
  service_requirements.hazardous_waste_volume.set(value)
end

And(/^I enter (.+) for clinical waste$/) do |value|
  service_requirements.clinical_waste.set(value)
end

And(/^I enter (.+) for medical waste$/) do |value|
  service_requirements.medical_waste.set(value)
end

And(/^I enter (.+) for handyman services$/) do |value|
  service_requirements.medical_waste.set(value)
end

And(/^The mechanical service volume details displayed are:$/) do |table|
  table.transpose.raw.flatten.each do |services|
    expect(page).to have_css('[id="C.1-gia-volume"]', text: services)
  end
end

Then(/^I click on return to service requirements summary link$/) do
  click_on "Return to service requirements summary"
end

Then(/^I click on continue to results$/) do
  sleep 2
  click_on "Continue to results"
end

Then(/^I change contract name$/) do
  @name_change = "Change_contract_name_DS_" + SecureRandom.uuid
  requirements.contract_name.set(@name_change)
end

Then(/^The contract name should include "([^"]*)"$/) do |value|
  expect(requirements.procurement_name[1].text).to start_with(value)
end

Then(/^I enter the cost (\d+)$/) do |cost|
  requirements.estimated_cost.radio_content.input.set(cost)
end

Then(/^I click on service requirements link$/) do
  click_on "Service requirements"
end

Then(/^I am on service requirements summary page$/) do
  expect(common.header_one.text).to end_with("Service requirements summary")
end

Then(/^I am on contract period summary page$/) do
  expect(common.header_one.text).to end_with("Contract period summary")
end

Then(/^I click on services link$/) do
  click_on "Services"
end

And(/^I am on buildings page$/) do
  expect(common.header_one.text).to end_with("Buildings")
end

Then(/^I am on Assigning services to buildings summary page$/) do
  expect(common.header_one.text).to end_with("Assigning services to buildings summary")
end

Then(/^I click on the service question$/) do
  requirements.service_question.click
end

Then(/^I select services for first building "([^"]*)"$/) do |_building_name|
  service_requirements.bms.click
  service_requirements.env_cleaning.click
  service_requirements.fire_detection_maintenance.click
  service_requirements.high_voltage.click
  service_requirements.internal_external_building.click
  service_requirements.lifts_hoists.click
  service_requirements.mech_elec.click
  service_requirements.security_access.click
  service_requirements.standby_power.click
  service_requirements.ventilation.click
  service_requirements.cafm.click
  service_requirements.helpdesk.click
  service_requirements.management_billable
end

Then(/^I select services for second building "([^"]*)"$/) do |_building_name|
  service_requirements.asbestos.click
  service_requirements.compliance_plans.click
  service_requirements.condition_survey.click
  service_requirements.electrical_testing.click
  service_requirements.fire_risk.click
  service_requirements.portable_appliance.click
  service_requirements.statutory_inspections.click
  service_requirements.water_hygiene.click
  service_requirements.cleaning_external.click
  service_requirements.cleaning_integral.click
  service_requirements.deep_periodic_clean.click
  service_requirements.mobile_cleaning.click
  service_requirements.pest_control.click
  service_requirements.external_window_cleaning.click
  service_requirements.internal_window_cleaning.click
end

Then(/^I select services for third building "([^"]*)"$/) do |_building_name|
  service_requirements.routine_cleaning.click
  service_requirements.handyman_services.click
  service_requirements.move_space_manage.click
  service_requirements.car_park.click
  service_requirements.reception_services.click
  service_requirements.taxi_booking.click
  service_requirements.voice_announce.click
  service_requirements.cctv.click
  service_requirements.control_access.click
  service_requirements.emergency_response.click
  service_requirements.managements_visitor.click
  service_requirements.manned_guarding.click
  service_requirements.patrols_fixed.click
end

Then(/^I select services for fourth building "([^"]*)"$/) do |_building_name|
  service_requirements.classified_waste.click
  service_requirements.feminine_hygiene.click
  service_requirements.general_waste.click
  service_requirements.recycled_waste.click
  service_requirements.cafm.click
  service_requirements.helpdesk.click
  service_requirements.management_billable.click
end


When(/^I select services with no service questions$/) do
  check 'Voice announcement system maintenance'
  check 'Airport and aerodrome maintenance services'
  check 'Specialist maintenance services'
  check 'Professional snow & ice clearance'
  check 'Building information modelling and government soft landings'
  check 'Retail services / convenience store '
  check 'Deli/coffee bar'
  check 'Events and functions'
  check 'Full service restaurant'
  check 'Hospitality and meetings'
  check 'Outside catering'
  check 'Trolley service'
  check 'Vending services (food & beverage)'
  check 'Residential catering services'
  check 'Cleaning of communications and equipment rooms'
  check 'Specialist cleaning'
  check 'Cleaning of curtains and window blinds'
  check 'Cable management'
  check 'Stores management'
  check 'Portable washroom solutions'
  check 'Administrative support services'
  check 'Additional security services'
  check 'Patrols (mobile via a specific visiting vehicle)'
  check 'Journal, magazine and newspaper supply'
  check 'Footwear cobbling services'
  check 'Provision of chaplaincy support services'
  check 'Housing and residential accommodation management'
  check 'Training establishment management and booking service'
end

Then(/^I am on requirements page$/) do
  step "I click on continue"
  step "I click on open all"
  step "I click on Tees Valley and Durham"
  step "I click on continue"
  step "I add contract name"
  step "I click on save and continue"
  step "I click on continue"
end

Then(/^I answer contract details question$/) do
  step "I click on estimated annual cost"
  step "I am on estimated annual cost page"
  step "I select no option for estimated annual cost"
  step "I click on save and return"
  step "I click on TUPE"
  step "I select no option for tupe"
  step "I click on save and return"
  step "I click on contract period"
end

Then(/^I answer contract period question/) do
  step "I am on contract period page"
  step "I enter values for initial call-off period"
  step "I select no option for tupe required"
  step "I select no option for optional call-off extension"
  step "I click on save and continue"
  step "I click on return to requirements"
end

Then(/^I select building/) do
  step "I click on buildings link"
  step "I select first building"
  step "I click on save and continue"
  step "I click on return to requirements"
end

Then(/^I assign services to buildings/) do
  step "I click on assigning services to buildings link"
  step "I click on the first building on the page"
  step "I click on select all"
  step "I click on save and return"
  step "I click on return to requirements"
end

Then(/^I navigate to results page$/) do
  step "I click on save and return"
  step "I click on return to service requirements summary link"
  step "I click on return to requirements"
  step "I click on continue to results"
end

Then(/^I complete service requirements questions$/) do
  step "I click on service requirements link"
  step "I am on service requirements summary page"
  step "I click on the first building on the page"
  step "I click on Answer question"
  step "I select standard A"
end

Then(/^I navigate to services page$/) do
  step "I click on save and continue"
  step "I am on contract period summary page"
  step "I click on return to requirements"
  step "I click on services link"
  step "I click on open all"
end

Then(/^I navigate to buildings page$/) do
  step "I click on save and continue"
  step "I click on return to requirements"
  step "I click on buildings link"
  step "I am on buildings page"
end

Then(/^I navigate to Assigning services to buildings summary page$/) do
  step "I click on save and continue"
  step "I click on return to requirements"
  step "I click on assigning services to buildings link"
  step "I am on Assigning services to buildings summary page"
end

Then(/^I navigate to Service requirements summary page$/) do
  step "I click on return to requirements"
  step "I click on service requirements link"
  step "I am on service requirements summary page"
end

And(/^for scenario 3, lot 1a I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
end

And(/^for scenario 3, I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I enter 10000 for mobile cleaning'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter 30000 for general waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Recycled waste" page'
  step 'I enter 30000 for recycled waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Ventilation and air conditioning system maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Environmental cleaning service" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mobile cleaning services" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
end

And(/^for scenario 0, lot 1a I add the details for "([^"]*)" building$/) do |building|
  step 'I navigate to buildings page'
  step "I find and select \"#{building}\""
  step 'I navigate to Assigning services to buildings summary page'
  step "I click on \"#{building}\""
  step 'I select all services for first building'
  step 'I navigate to Service requirements summary page'
  step "I click on \"#{building}\""
  step 'I am on the "Service requirements" page'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I enter 34 for routine cleaning'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Reception service" page'
  step 'I enter 6240 for service hours'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "General waste" page'
  step 'I enter 130 for general waste'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Mechanical and electrical engineering maintenance" page'
  step 'I select standard A'
  step 'I click on "Save and return"'
  step 'I click on the service question'
  step 'I am on the "Routine cleaning" page'
  step 'I select standard A'
end