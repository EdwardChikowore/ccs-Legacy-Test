
Then(/^I click on open all$/) do
  value = common.open_all.text
  common.open_all.click if ( value == 'Open all sections')
end

Then(/^I click on close all on regions page$/) do
  value = common.open_all.text
  common.open_all.click if ( value == 'Close all sections')
end

Then(/^I click on close all on services page$/) do
  value = common.open_all.text
  common.open_all.click if ( value == 'Close all sections')
end

Then(/^I click on close all$/) do
  value = common.open_all.text
  common.open_all.click if ( value == 'Close all sections')
end

Then(/^I click on first region section$/) do
  value = @driver.find_element(common.north_east_section.expanded).text
  expect(value).to eq('dhgfh')
  # common.north_east_section.expanded.click if ( value == 'false')
end

Then(/^I click on second region section$/) do
  value = common.north_west_section.expanded.click.text
  common.north_west_section.expanded.click if ( value == 'false')
end

Then(/^I click on third region section$/) do
  value = common.yorkshire_humber_section.expanded.click.text
  common.yorkshire_humber_section.expanded.click if ( value == 'false')
end



Then(/^I click on the following services$/) do |elements|
  check elements
end

Then(/^The building gia is (.+)$/) do |gia|
  # building_gia = common.gia_value[1]
  expect(common.gia_value[1].text).to eq(gia)
end

Then(/^I select first building$/) do
  common.building_one.address.click
end

Then(/^I select second building$/) do
  common.building_two.address.click
end

Then(/^I select third building$/) do
  common.building_three.address.click
end

Then(/^I select fourth building$/) do
  common.building_four.address.click
end

Then(/^I select fifth building$/) do
  common.building_five.address.click
end

Then(/^I select sixth building$/) do
  common.building_six.address.click
end

Then(/^I select seventh building$/) do
  common.building_seven.address.click
end

Then(/^I select eighth building$/) do
  common.building_eight.address.click
end

Then(/^I select ninth building$/) do
  common.building_nine.address.click
end

Then(/^I select tenth building$/) do
  common.building_ten.address.click
end

Then(/^I select first building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_one = common.building_one.name.text
  expect(common.building_one.name.text).to eq(building_name)
  expect(common.building_one.address.text).to eq(building_address)
  common.building_one.address.click
end

Then(/^I select second building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_two = common.building_two.name.text
  expect(common.building_two.name.text).to eq(building_name)
  expect(common.building_two.address.text).to eq(building_address)
  common.building_two.address.click
end

Then(/^I select third building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_three = common.building_three.name.text
  expect(common.building_three.name.text).to eq(building_name)
  expect(common.building_three.address.text).to eq(building_address)
  common.building_three.address.click
end

Then(/^I select fourth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_four = common.building_four.name.text
  expect(common.building_four.name.text).to eq(building_name)
  expect(common.building_four.address.text).to eq(building_address)
  common.building_four.address.click
end


Then(/^I select fifth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_five = common.building_five.name.text
  expect(common.building_five.name.text).to eq(building_name)
  expect(common.building_five.address.text).to eq(building_address)
  common.building_five.address.click
end

Then(/^I select sixth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_six = common.building_six.name.text
  expect(common.building_six.name.text).to eq(building_name)
  expect(common.building_six.address.text).to eq(building_address)
  common.building_six.address.click
end

Then(/^I select seventh building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_seven = common.building_seven.name.text
  expect(common.building_seven.name.text).to eq(building_name)
  expect(common.building_seven.address.text).to eq(building_address)
  common.building_seven.address.click
end

Then(/^The seventh building "([^"]*)" address is "([^"]*)"$/) do |building_name, building_address|
  @building_seven = common.building_seven.name.text
  expect(common.building_seven.name.text).to eq(building_name)
  expect(common.building_seven.address.text).to eq(building_address)
end

Then(/^I select eight building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_eight = common.building_eight.name.text
  expect(common.building_eight.name.text).to eq(building_name)
  expect(common.building_eight.address.text).to eq(building_address)
  common.building_eight.address.click
end

Then(/^I select ninth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_nine = common.building_nine.name.text
  expect(common.building_nine.name.text).to eq(building_name)
  expect(common.building_nine.address.text).to eq(building_address)
  common.building_nine.address.click
end

Then(/^I select tenth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_ten = common.building_ten.name.text
  expect(common.building_ten.name.text).to eq(building_name)
  expect(common.building_ten.address.text).to eq(building_address)
  common.building_ten.address.click
end

Then(/^I select eleventh building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_eleven = common.building_eleven.name.text
  expect(common.building_eleven.name.text).to eq(building_name)
  expect(common.building_eleven.address.text).to eq(building_address)
  common.building_eleven.address.click
end

Then(/^I select twelfth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_twelve = common.building_twelve.name.text
  expect(common.building_twelve.name.text).to eq(building_name)
  expect(common.building_twelve.address.text).to eq(building_address)
  common.building_twelve.address.click
end

Then(/^The twelfth building "([^"]*)" address is "([^"]*)"$/) do |building_name, building_address|
  @building_twelve = common.building_twelve.name.text
  expect(common.building_twelve.name.text).to eq(building_name)
  expect(common.building_twelve.address.text).to eq(building_address)
end



Then(/^I select thirteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_thirteen = common.building_thirteen.name.text
  expect(common.building_thirteen.name.text).to eq(building_name)
  expect(common.building_thirteen.address.text).to eq(building_address)
  common.building_thirteen.address.click
end

Then(/^I select fourteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_fourteen = common.building_fourteen.name.text
  expect(common.building_fourteen.name.text).to eq(building_name)
  expect(common.building_fourteen.address.text).to eq(building_address)
  common.building_fourteen.address.click
end

Then(/^I select fifteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_fifteen = common.building_fifteen.name.text
  expect(common.building_fifteen.name.text).to eq(building_name)
  expect(common.building_fifteen.address.text).to eq(building_address)
  common.building_fifteen.address.click
end

Then(/^I select all services$/) do
  common.building_service.checkbox.click
end

Then(/^I select all services for first building$/) do
  common.checkbox_multiple_building.click
  click_on "Save and return"
end

Then(/^I select all services for second building$/) do
  common.checkbox_multiple_building.click
  click_on "Save and return"
end

Then(/^I select services for first building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[2].click
  common.service_selection.env_cleaning[2].click
  common.service_selection.lifts_hoists[2].click
  common.service_selection.mech_elec[2].click
  common.service_selection.portable_appliance[2].click
  common.service_selection.water_hygiene[2].click
  common.service_selection.cleaning_external[2].click
  common.service_selection.routine_cleaning[2].click
  common.service_selection.handyman_services[2].click
  common.service_selection.move_space_manage[2].click
  common.service_selection.car_park[2].click
  common.service_selection.reception_services[2].click
  common.service_selection.taxi_booking[2].click
  common.service_selection.voice_announce[2].click
  common.service_selection.cctv[2].click
  common.service_selection.control_access[2].click
  common.service_selection.emergency_response[2].click
  common.service_selection.managements_visitor[2].click
  common.service_selection.manned_guarding[2].click
  common.service_selection.patrols_fixed[2].click
  common.service_selection.classified_waste[2].click
  common.service_selection.feminine_hygiene[2].click
  common.service_selection.general_waste[2].click
  common.service_selection.recycled_waste[2].click
  common.service_selection.cafm[2].click
  common.service_selection.helpdesk[2].click
  common.service_selection.management_billable[2].click
end


Then(/^I select services for second building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[4].click
  common.service_selection.env_cleaning[4].click
  common.service_selection.fire_detection_maintenance[4].click
  common.service_selection.high_voltage[4].click
  common.service_selection.internal_external_building[4].click
  common.service_selection.lifts_hoists[4].click
  common.service_selection.mech_elec[4].click
  common.service_selection.security_access[4].click
  common.service_selection.standby_power[4].click
  common.service_selection.ventilation[4].click
  common.service_selection.asbestos[4].click
  common.service_selection.compliance_plans[4].click
  common.service_selection.condition_survey[4].click
  common.service_selection.electrical_testing[4].click
  common.service_selection.fire_risk[4].click
  common.service_selection.mobile_cleaning[4].click
  common.service_selection.handyman_services[4].click
  common.service_selection.cafm[4].click
  common.service_selection.helpdesk[4].click

end

Then(/^I select services for third building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.mech_elec[5].click
  common.service_selection.portable_appliance[5].click
  common.service_selection.routine_cleaning[5].click
  common.service_selection.handyman_services[5].click
  common.service_selection.move_space_manage[5].click
  common.service_selection.car_park[5].click
  common.service_selection.reception_services[5].click
  common.service_selection.taxi_booking[5].click
  common.service_selection.voice_announce[5].click
  common.service_selection.cctv[5].click
  common.service_selection.control_access[5].click
  common.service_selection.emergency_response[5].click
  common.service_selection.managements_visitor[5].click
  common.service_selection.manned_guarding[5].click
  common.service_selection.patrols_fixed[5].click
  common.service_selection.classified_waste[5].click
  common.service_selection.feminine_hygiene[5].click
  common.service_selection.general_waste[5].click
  common.service_selection.recycled_waste[5].click
  common.service_selection.cafm[5].click
  common.service_selection.helpdesk[5].click

end


Then(/^I select services for fourth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[8].click
  common.service_selection.env_cleaning[8].click
  common.service_selection.lifts_hoists[8].click
  common.service_selection.mech_elec[8].click
  common.service_selection.portable_appliance[8].click
  common.service_selection.cleaning_external[8].click
  common.service_selection.routine_cleaning[8].click
  common.service_selection.handyman_services[8].click
  common.service_selection.move_space_manage[8].click
  common.service_selection.car_park[8].click
  common.service_selection.cctv[8].click
  common.service_selection.control_access[8].click
  common.service_selection.managements_visitor[8].click
  common.service_selection.manned_guarding[8].click
  common.service_selection.patrols_fixed[8].click
  common.service_selection.classified_waste[8].click
  common.service_selection.feminine_hygiene[8].click
  common.service_selection.general_waste[8].click
  common.service_selection.recycled_waste[8].click
  common.service_selection.cafm[8].click
  common.service_selection.helpdesk[8].click
  common.service_selection.management_billable[8].click

end


Then(/^I select services for fifth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[6].click
  common.service_selection.env_cleaning[6].click
  common.service_selection.fire_detection_maintenance[6].click
  common.service_selection.high_voltage[6].click
  common.service_selection.ventilation[6].click
  common.service_selection.asbestos[6].click
  common.service_selection.compliance_plans[6].click
  common.service_selection.electrical_testing[6].click
  common.service_selection.fire_risk[6].click
  common.service_selection.statutory_inspections[6].click
  common.service_selection.water_hygiene[6].click
  common.service_selection.cleaning_integral[6].click
  common.service_selection.external_window_cleaning[6].click
  common.service_selection.internal_window_cleaning[6].click
  common.service_selection.general_waste[6].click
  common.service_selection.recycled_waste[6].click
  common.service_selection.cafm[6].click
  common.service_selection.helpdesk[6].click

end

Then(/^I select services for sixth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[9].click
  common.service_selection.env_cleaning[9].click
  common.service_selection.fire_detection_maintenance[9].click
  common.service_selection.high_voltage[9].click
  common.service_selection.internal_external_building[9].click
  common.service_selection.lifts_hoists[9].click
  common.service_selection.mech_elec[9].click
  common.service_selection.condition_survey[9].click
  common.service_selection.electrical_testing[9].click
  common.service_selection.fire_risk[9].click
  common.service_selection.classified_waste[9].click
  common.service_selection.feminine_hygiene[9].click
  common.service_selection.cafm[9].click
  common.service_selection.helpdesk[9].click
  common.service_selection.management_billable[9].click

end

Then(/^I select services for seventh building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[0].click
  common.service_selection.env_cleaning[0].click
  common.service_selection.fire_detection_maintenance[0].click
  common.service_selection.high_voltage[0].click
  common.service_selection.internal_external_building[0].click
  common.service_selection.lifts_hoists[0].click
  common.service_selection.mech_elec[0].click
  common.service_selection.security_access[0].click
  common.service_selection.standby_power[0].click
  common.service_selection.ventilation[0].click
  common.service_selection.asbestos[0].click
  common.service_selection.compliance_plans[0].click
  common.service_selection.condition_survey[0].click
  common.service_selection.cleaning_integral[0].click
  common.service_selection.deep_periodic_clean[0].click
  common.service_selection.handyman_services[0].click
  common.service_selection.move_space_manage[0].click
  common.service_selection.car_park[0].click
  common.service_selection.cafm[0].click
  common.service_selection.helpdesk[0].click
  common.service_selection.management_billable[0].click
end

Then(/^I select services for eighth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[7].click
  common.service_selection.env_cleaning[7].click
  common.service_selection.fire_detection_maintenance[7].click
  common.service_selection.high_voltage[7].click
  common.service_selection.internal_external_building[7].click
  common.service_selection.mech_elec[7].click
  common.service_selection.security_access[7].click
  common.service_selection.standby_power[7].click
  common.service_selection.ventilation[7].click
  common.service_selection.asbestos[7].click
  common.service_selection.compliance_plans[7].click
  common.service_selection.portable_appliance[7].click
  common.service_selection.cleaning_external[7].click
  common.service_selection.routine_cleaning[7].click
  common.service_selection.handyman_services[7].click
  common.service_selection.management_billable[7].click

end

Then(/^I select services for ninth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[3].click
  common.service_selection.env_cleaning[3].click
  common.service_selection.fire_detection_maintenance[3].click
  common.service_selection.high_voltage[3].click
  common.service_selection.internal_external_building[3].click
  common.service_selection.lifts_hoists[3].click
  common.service_selection.mech_elec[3].click
  common.service_selection.portable_appliance[3].click
  common.service_selection.cleaning_external[3].click
  common.service_selection.mobile_cleaning[3].click
  common.service_selection.handyman_services[3].click
  common.service_selection.move_space_manage[3].click
  common.service_selection.car_park[3].click
  common.service_selection.reception_services[3].click
  common.service_selection.taxi_booking[3].click
  common.service_selection.voice_announce[3].click
  common.service_selection.cctv[3].click
  common.service_selection.control_access[3].click
  common.service_selection.emergency_response[3].click
  common.service_selection.managements_visitor[3].click
  common.service_selection.manned_guarding[3].click
  common.service_selection.patrols_fixed[3].click
  common.service_selection.cafm[3].click
  common.service_selection.helpdesk[3].click
  common.service_selection.management_billable[3].click

end

Then(/^I select services for tenth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  common.service_selection.bms[1].click
  common.service_selection.env_cleaning[1].click
  common.service_selection.fire_detection_maintenance[1].click
  common.service_selection.high_voltage[1].click
  common.service_selection.internal_external_building[1].click
  common.service_selection.mech_elec[1].click
  common.service_selection.security_access[1].click
  common.service_selection.standby_power[1].click
  common.service_selection.ventilation[1].click
  common.service_selection.asbestos[1].click
  common.service_selection.compliance_plans[1].click
  common.service_selection.condition_survey[1].click
  common.service_selection.taxi_booking[1].click
  common.service_selection.voice_announce[1].click
  common.service_selection.cctv[1].click
  common.service_selection.control_access[1].click
  common.service_selection.feminine_hygiene[1].click
  common.service_selection.general_waste[1].click
  common.service_selection.recycled_waste[1].click
  common.service_selection.cafm[1].click
  common.service_selection.helpdesk[1].click
  common.service_selection.management_billable[1].click
end

Then(/^I select services for first building "([^"]*)" - DA scenario three$/) do |building_name|
  #Building_four
  # click_on building_name
  # common.service_selection.bms[0].click
  # common.service_selection.env_cleaning[0].click
  # common.service_selection.fire_detection_maintenance[0].click
  # common.service_selection.high_voltage[0].click
  # common.service_selection.internal_external_building[0].click
  # common.service_selection.lifts_hoists[0].click
  # common.service_selection.mech_elec[0].click
  # common.service_selection.security_access[0].click
  # common.service_selection.standby_power[0].click
  # common.service_selection.ventilation[0].click
  # common.service_selection.cafm[0].click
  # common.service_selection.helpdesk[0].click
  # common.service_selection.management_billable[0].click
  #

  click_on building_name
  service_requirements.aberdeen_services.select_all.click
  service_requirements.aberdeen_services.bms.click
  service_requirements.aberdeen_services.env_cleaning.click
  service_requirements.aberdeen_services.fire_detection_maintenance.click
  service_requirements.aberdeen_services.high_voltage.click
  service_requirements.aberdeen_services.internal_external_building.click
  service_requirements.aberdeen_services.lifts_hoists.click
  service_requirements.aberdeen_services.mech_elec.click
  service_requirements.aberdeen_services.security_access.click
  service_requirements.aberdeen_services.standby_power.click
  service_requirements.aberdeen_services.ventilation.click
end


Then(/^I select services for first building "([^"]*)" - DA scenario two$/) do |building_name|
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


Then(/^I select services for second building "([^"]*)" - DA scenario two$/) do |building_name|
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



Then(/^I select services for third building "([^"]*)" - DA scenario two$/) do |building_name|
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



Then(/^I select services for fourth building "([^"]*)" - DA scenario two$/) do |building_name|
  service_requirements.classified_waste.click
  service_requirements.feminine_hygiene.click
  service_requirements.general_waste.click
  service_requirements.recycled_waste.click
  service_requirements.cafm.click
  service_requirements.helpdesk.click
  service_requirements.management_billable.click
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

Then(/^I select all day service for Monday to Friday$/) do
  common.service_hours.all_day[0].click
  common.service_hours.copy_details.click
end

Then(/^I select not required for Saturday and Sunday$/) do
  common.service_hours.saturday_not_required.click
  common.service_hours.sunday_not_required.click
end

Then(/^I select all day service for Saturday and Sunday$/) do
  common.service_hours.saturday_all_day.click
  common.service_hours.sunday_all_day.click
end

Then(/^I select not required for Tuesday to Sunday$/) do
  common.service_hours.not_required[1].click
  common.service_hours.not_required[2].click
  common.service_hours.not_required[3].click
  common.service_hours.not_required[4].click
  common.service_hours.not_required[5].click
  common.service_hours.not_required[6].click
end

Then(/^I select all day service for Monday$/) do
  common.service_hours.all_day[0].click
end


And(/^I should see the partial price value (.+)$/) do |value|
  expect(common.choose_contract_value[1].text).to start_with(value)
end

Then(/^unpriced service "([^"]*)" should be displayed$/) do |unpriced_service|
  common.choose_contract.summary_text.click
  expect(common.choose_contract.unpriced_service.text).to eq(unpriced_service)
end

Then(/^I click on second building - multiple building$/) do
  expect(common.your_buildings.building_name[1].text).to eq("#{@building_twelve} (0 selected)")
  common.your_buildings.building_name[1].click
end

Then(/^The direct award option should not be displayed$/) do
  expect(home.market_route).to have_no_radio_items[0]
  expect(home.market_route).to have_no_radio_items[1]
  expect(home.market_route).to have_no_radio_items[2]
end

Then(/^I should see "([^"]*)" as the only available route to market$/) do |market_route|
  expect(common.fc_header.text).to eq(market_route)
end

And(/^I enter (.+) for service hours$/) do |value|
  service_requirements.number_of_hours.set(value)
  service_requirements.service_hours_requirement.set('Test one')
end

