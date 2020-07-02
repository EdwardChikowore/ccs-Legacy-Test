
Then(/^I click on open all$/) do
  value = home.open_all.text
  home.open_all.click if ( value == 'Open all sections')
end

Then(/^I click on close all on regions page$/) do
  value = home.open_all.text
  home.open_all.click if ( value == 'Close all sections')
end

Then(/^I click on close all on services page$/) do
  value = home.open_all.text
  home.open_all.click if ( value == 'Close all sections')
end


Then(/^I click on first region section$/) do
  value = @driver.find_element(home.north_east_section.expanded).text
  expect(value).to eq('dhgfh')
  # home.north_east_section.expanded.click if ( value == 'false')
end

Then(/^I click on second region section$/) do
  value = home.north_west_section.expanded.click.text
  home.north_west_section.expanded.click if ( value == 'false')
end

Then(/^I click on third region section$/) do
  value = home.yorkshire_humber_section.expanded.click.text
  home.yorkshire_humber_section.expanded.click if ( value == 'false')
end



Then(/^I click on the following services$/) do |elements|
  check elements
end

Then(/^The building gia is (.+)$/) do |gia|
  # building_gia = home.gia_value[1]
  expect(home.gia_value[1].text).to eq(gia)
end

Then(/^I select first building$/) do
  home.building_one.address.click
end

Then(/^I select first building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_one = home.building_one.name.text
  expect(home.building_one.name.text).to eq(building_name)
  expect(home.building_one.address.text).to eq(building_address)
  home.building_one.address.click
end


Then(/^I select second building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_two = home.building_two.name.text
  expect(home.building_two.name.text).to eq(building_name)
  expect(home.building_two.address.text).to eq(building_address)
  home.building_two.address.click
end

Then(/^I select third building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_three = home.building_three.name.text
  expect(home.building_three.name.text).to eq(building_name)
  expect(home.building_three.address.text).to eq(building_address)
  home.building_three.address.click
end

Then(/^I select fourth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_four = home.building_four.name.text
  expect(home.building_four.name.text).to eq(building_name)
  expect(home.building_four.address.text).to eq(building_address)
  home.building_four.address.click
end


Then(/^I select fifth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_five = home.building_five.name.text
  expect(home.building_five.name.text).to eq(building_name)
  expect(home.building_five.address.text).to eq(building_address)
  home.building_five.address.click
end

Then(/^I select sixth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_six = home.building_six.name.text
  expect(home.building_six.name.text).to eq(building_name)
  expect(home.building_six.address.text).to eq(building_address)
  home.building_six.address.click
end

Then(/^I select seventh building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_seven = home.building_seven.name.text
  expect(home.building_seven.name.text).to eq(building_name)
  expect(home.building_seven.address.text).to eq(building_address)
  home.building_seven.address.click
end

Then(/^The seventh building "([^"]*)" address is "([^"]*)"$/) do |building_name, building_address|
  @building_seven = home.building_seven.name.text
  expect(home.building_seven.name.text).to eq(building_name)
  expect(home.building_seven.address.text).to eq(building_address)
end

Then(/^I select eight building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_eight = home.building_eight.name.text
  expect(home.building_eight.name.text).to eq(building_name)
  expect(home.building_eight.address.text).to eq(building_address)
  home.building_eight.address.click
end

Then(/^I select ninth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_nine = home.building_nine.name.text
  expect(home.building_nine.name.text).to eq(building_name)
  expect(home.building_nine.address.text).to eq(building_address)
  home.building_nine.address.click
end

Then(/^I select tenth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_ten = home.building_ten.name.text
  expect(home.building_ten.name.text).to eq(building_name)
  expect(home.building_ten.address.text).to eq(building_address)
  home.building_ten.address.click
end

Then(/^I select eleventh building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_eleven = home.building_eleven.name.text
  expect(home.building_eleven.name.text).to eq(building_name)
  expect(home.building_eleven.address.text).to eq(building_address)
  home.building_eleven.address.click
end

Then(/^I select twelfth building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_twelve = home.building_twelve.name.text
  expect(home.building_twelve.name.text).to eq(building_name)
  expect(home.building_twelve.address.text).to eq(building_address)
  home.building_twelve.address.click
end

Then(/^The twelfth building "([^"]*)" address is "([^"]*)"$/) do |building_name, building_address|
  @building_twelve = home.building_twelve.name.text
  expect(home.building_twelve.name.text).to eq(building_name)
  expect(home.building_twelve.address.text).to eq(building_address)
end



Then(/^I select thirteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_thirteen = home.building_thirteen.name.text
  expect(home.building_thirteen.name.text).to eq(building_name)
  expect(home.building_thirteen.address.text).to eq(building_address)
  home.building_thirteen.address.click
end

Then(/^I select fourteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_fourteen = home.building_fourteen.name.text
  expect(home.building_fourteen.name.text).to eq(building_name)
  expect(home.building_fourteen.address.text).to eq(building_address)
  home.building_fourteen.address.click
end

Then(/^I select fifteen building "([^"]*)" with address "([^"]*)"$/) do |building_name, building_address|
  @building_fifteen = home.building_fifteen.name.text
  expect(home.building_fifteen.name.text).to eq(building_name)
  expect(home.building_fifteen.address.text).to eq(building_address)
  home.building_fifteen.address.click
end

Then(/^I select all services$/) do
  home.building_service.checkbox.click
end

Then(/^I select all services for first building$/) do
  home.checkbox_multiple_building[1].click
  # home.checkbox_multiple_building[0].click
end

Then(/^I select services for first building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[2].click
  home.service_selection.env_cleaning[2].click
  home.service_selection.lifts_hoists[2].click
  home.service_selection.mech_elec[2].click
  home.service_selection.portable_appliance[2].click
  home.service_selection.water_hygiene[2].click
  home.service_selection.cleaning_external[2].click
  home.service_selection.routine_cleaning[2].click
  home.service_selection.handyman_services[2].click
  home.service_selection.move_space_manage[2].click
  home.service_selection.car_park[2].click
  home.service_selection.reception_services[2].click
  home.service_selection.taxi_booking[2].click
  home.service_selection.voice_announce[2].click
  home.service_selection.cctv[2].click
  home.service_selection.control_access[2].click
  home.service_selection.emergency_response[2].click
  home.service_selection.managements_visitor[2].click
  home.service_selection.manned_guarding[2].click
  home.service_selection.patrols_fixed[2].click
  home.service_selection.classified_waste[2].click
  home.service_selection.feminine_hygiene[2].click
  home.service_selection.general_waste[2].click
  home.service_selection.recycled_waste[2].click
  home.service_selection.cafm[2].click
  home.service_selection.helpdesk[2].click
  home.service_selection.management_billable[2].click




end


Then(/^I select services for second building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[4].click
  home.service_selection.env_cleaning[4].click
  home.service_selection.fire_detection_maintenance[4].click
  home.service_selection.high_voltage[4].click
  home.service_selection.internal_external_building[4].click
  home.service_selection.lifts_hoists[4].click
  home.service_selection.mech_elec[4].click
  home.service_selection.security_access[4].click
  home.service_selection.standby_power[4].click
  home.service_selection.ventilation[4].click
  home.service_selection.asbestos[4].click
  home.service_selection.compliance_plans[4].click
  home.service_selection.condition_survey[4].click
  home.service_selection.electrical_testing[4].click
  home.service_selection.fire_risk[4].click
  home.service_selection.mobile_cleaning[4].click
  home.service_selection.handyman_services[4].click
  home.service_selection.cafm[4].click
  home.service_selection.helpdesk[4].click

end

Then(/^I select services for third building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.mech_elec[5].click
  home.service_selection.portable_appliance[5].click
  home.service_selection.routine_cleaning[5].click
  home.service_selection.handyman_services[5].click
  home.service_selection.move_space_manage[5].click
  home.service_selection.car_park[5].click
  home.service_selection.reception_services[5].click
  home.service_selection.taxi_booking[5].click
  home.service_selection.voice_announce[5].click
  home.service_selection.cctv[5].click
  home.service_selection.control_access[5].click
  home.service_selection.emergency_response[5].click
  home.service_selection.managements_visitor[5].click
  home.service_selection.manned_guarding[5].click
  home.service_selection.patrols_fixed[5].click
  home.service_selection.classified_waste[5].click
  home.service_selection.feminine_hygiene[5].click
  home.service_selection.general_waste[5].click
  home.service_selection.recycled_waste[5].click
  home.service_selection.cafm[5].click
  home.service_selection.helpdesk[5].click

end


Then(/^I select services for fourth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[8].click
  home.service_selection.env_cleaning[8].click
  home.service_selection.lifts_hoists[8].click
  home.service_selection.mech_elec[8].click
  home.service_selection.portable_appliance[8].click
  home.service_selection.cleaning_external[8].click
  home.service_selection.routine_cleaning[8].click
  home.service_selection.handyman_services[8].click
  home.service_selection.move_space_manage[8].click
  home.service_selection.car_park[8].click
  home.service_selection.cctv[8].click
  home.service_selection.control_access[8].click
  home.service_selection.managements_visitor[8].click
  home.service_selection.manned_guarding[8].click
  home.service_selection.patrols_fixed[8].click
  home.service_selection.classified_waste[8].click
  home.service_selection.feminine_hygiene[8].click
  home.service_selection.general_waste[8].click
  home.service_selection.recycled_waste[8].click
  home.service_selection.cafm[8].click
  home.service_selection.helpdesk[8].click
  home.service_selection.management_billable[8].click

end


Then(/^I select services for fifth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[6].click
  home.service_selection.env_cleaning[6].click
  home.service_selection.fire_detection_maintenance[6].click
  home.service_selection.high_voltage[6].click
  home.service_selection.ventilation[6].click
  home.service_selection.asbestos[6].click
  home.service_selection.compliance_plans[6].click
  home.service_selection.electrical_testing[6].click
  home.service_selection.fire_risk[6].click
  home.service_selection.statutory_inspections[6].click
  home.service_selection.water_hygiene[6].click
  home.service_selection.cleaning_integral[6].click
  home.service_selection.external_window_cleaning[6].click
  home.service_selection.internal_window_cleaning[6].click
  home.service_selection.general_waste[6].click
  home.service_selection.recycled_waste[6].click
  home.service_selection.cafm[6].click
  home.service_selection.helpdesk[6].click

end

Then(/^I select services for sixth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[9].click
  home.service_selection.env_cleaning[9].click
  home.service_selection.fire_detection_maintenance[9].click
  home.service_selection.high_voltage[9].click
  home.service_selection.internal_external_building[9].click
  home.service_selection.lifts_hoists[9].click
  home.service_selection.mech_elec[9].click
  home.service_selection.condition_survey[9].click
  home.service_selection.electrical_testing[9].click
  home.service_selection.fire_risk[9].click
  home.service_selection.classified_waste[9].click
  home.service_selection.feminine_hygiene[9].click
  home.service_selection.cafm[9].click
  home.service_selection.helpdesk[9].click
  home.service_selection.management_billable[9].click

end

Then(/^I select services for seventh building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[0].click
  home.service_selection.env_cleaning[0].click
  home.service_selection.fire_detection_maintenance[0].click
  home.service_selection.high_voltage[0].click
  home.service_selection.internal_external_building[0].click
  home.service_selection.lifts_hoists[0].click
  home.service_selection.mech_elec[0].click
  home.service_selection.security_access[0].click
  home.service_selection.standby_power[0].click
  home.service_selection.ventilation[0].click
  home.service_selection.asbestos[0].click
  home.service_selection.compliance_plans[0].click
  home.service_selection.condition_survey[0].click
  home.service_selection.cleaning_integral[0].click
  home.service_selection.deep_periodic_clean[0].click
  home.service_selection.handyman_services[0].click
  home.service_selection.move_space_manage[0].click
  home.service_selection.car_park[0].click
  home.service_selection.cafm[0].click
  home.service_selection.helpdesk[0].click
  home.service_selection.management_billable[0].click
end

Then(/^I select services for eighth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[7].click
  home.service_selection.env_cleaning[7].click
  home.service_selection.fire_detection_maintenance[7].click
  home.service_selection.high_voltage[7].click
  home.service_selection.internal_external_building[7].click
  home.service_selection.mech_elec[7].click
  home.service_selection.security_access[7].click
  home.service_selection.standby_power[7].click
  home.service_selection.ventilation[7].click
  home.service_selection.asbestos[7].click
  home.service_selection.compliance_plans[7].click
  home.service_selection.portable_appliance[7].click
  home.service_selection.cleaning_external[7].click
  home.service_selection.routine_cleaning[7].click
  home.service_selection.handyman_services[7].click
  home.service_selection.management_billable[7].click

end

Then(/^I select services for ninth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[3].click
  home.service_selection.env_cleaning[3].click
  home.service_selection.fire_detection_maintenance[3].click
  home.service_selection.high_voltage[3].click
  home.service_selection.internal_external_building[3].click
  home.service_selection.lifts_hoists[3].click
  home.service_selection.mech_elec[3].click
  home.service_selection.portable_appliance[3].click
  home.service_selection.cleaning_external[3].click
  home.service_selection.mobile_cleaning[3].click
  home.service_selection.handyman_services[3].click
  home.service_selection.move_space_manage[3].click
  home.service_selection.car_park[3].click
  home.service_selection.reception_services[3].click
  home.service_selection.taxi_booking[3].click
  home.service_selection.voice_announce[3].click
  home.service_selection.cctv[3].click
  home.service_selection.control_access[3].click
  home.service_selection.emergency_response[3].click
  home.service_selection.managements_visitor[3].click
  home.service_selection.manned_guarding[3].click
  home.service_selection.patrols_fixed[3].click
  home.service_selection.cafm[3].click
  home.service_selection.helpdesk[3].click
  home.service_selection.management_billable[3].click

end

Then(/^I select services for tenth building "([^"]*)" - DA scenario one$/) do |building_name|
  click_on building_name
  home.service_selection.bms[1].click
  home.service_selection.env_cleaning[1].click
  home.service_selection.fire_detection_maintenance[1].click
  home.service_selection.high_voltage[1].click
  home.service_selection.internal_external_building[1].click
  home.service_selection.mech_elec[1].click
  home.service_selection.security_access[1].click
  home.service_selection.standby_power[1].click
  home.service_selection.ventilation[1].click
  home.service_selection.asbestos[1].click
  home.service_selection.compliance_plans[1].click
  home.service_selection.condition_survey[1].click
  home.service_selection.taxi_booking[1].click
  home.service_selection.voice_announce[1].click
  home.service_selection.cctv[1].click
  home.service_selection.control_access[1].click
  home.service_selection.feminine_hygiene[1].click
  home.service_selection.general_waste[1].click
  home.service_selection.recycled_waste[1].click
  home.service_selection.cafm[1].click
  home.service_selection.helpdesk[1].click
  home.service_selection.management_billable[1].click
end

Then(/^I select services for first building "([^"]*)" - DA scenario three$/) do |building_name|
  #Building_four
  # click_on building_name
  # home.service_selection.bms[0].click
  # home.service_selection.env_cleaning[0].click
  # home.service_selection.fire_detection_maintenance[0].click
  # home.service_selection.high_voltage[0].click
  # home.service_selection.internal_external_building[0].click
  # home.service_selection.lifts_hoists[0].click
  # home.service_selection.mech_elec[0].click
  # home.service_selection.security_access[0].click
  # home.service_selection.standby_power[0].click
  # home.service_selection.ventilation[0].click
  # home.service_selection.cafm[0].click
  # home.service_selection.helpdesk[0].click
  # home.service_selection.management_billable[0].click
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
  #Building_four
  # click_on building_name
  # home.service_selection.bms[0].click
  # home.service_selection.env_cleaning[0].click
  # home.service_selection.fire_detection_maintenance[0].click
  # home.service_selection.high_voltage[0].click
  # home.service_selection.internal_external_building[0].click
  # home.service_selection.lifts_hoists[0].click
  # home.service_selection.mech_elec[0].click
  # home.service_selection.security_access[0].click
  # home.service_selection.standby_power[0].click
  # home.service_selection.ventilation[0].click
  # home.service_selection.cafm[0].click
  # home.service_selection.helpdesk[0].click
  # home.service_selection.management_billable[0].click
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
  service_requirements.aberdeen_services.cafm.click
  service_requirements.aberdeen_services.helpdesk.click
  service_requirements.aberdeen_services.management_billable
end


Then(/^I select services for second building "([^"]*)" - DA scenario two$/) do |building_name|
  #Building_two
  # click_on building_name
  # home.service_selection.asbestos[2].click
  # home.service_selection.compliance_plans[2].click
  # home.service_selection.condition_survey[2].click
  # home.service_selection.electrical_testing[2].click
  # home.service_selection.fire_risk[2].click
  # home.service_selection.portable_appliance[2].click
  # home.service_selection.statutory_inspections[2].click
  # home.service_selection.water_hygiene[2].click
  # home.service_selection.cleaning_external[2].click
  # home.service_selection.cleaning_integral[2].click
  # home.service_selection.deep_periodic_clean[2].click
  # home.service_selection.mobile_cleaning[2].click
  # home.service_selection.pest_control[2].click
  # home.service_selection.external_window_cleaning[2].click
  # home.service_selection.internal_window_cleaning[2].click
  #
  #
  click_on building_name
  service_requirements.belfast_building_services.select_all.click
  service_requirements.belfast_building_services.asbestos.click
  service_requirements.belfast_building_services.compliance_plans.click
  service_requirements.belfast_building_services.condition_survey.click
  service_requirements.belfast_building_services.electrical_testing.click
  service_requirements.belfast_building_services.fire_risk.click
  service_requirements.belfast_building_services.portable_appliance.click
  service_requirements.belfast_building_services.statutory_inspections.click
  service_requirements.belfast_building_services.water_hygiene.click
  service_requirements.belfast_building_services.cleaning_external.click
  service_requirements.belfast_building_services.cleaning_integral.click
  service_requirements.belfast_building_services.deep_periodic_clean.click
  service_requirements.belfast_building_services.mobile_cleaning.click
  service_requirements.belfast_building_services.pest_control.click
  service_requirements.belfast_building_services.external_window_cleaning.click
  service_requirements.belfast_building_services.internal_window_cleaning.click
end



Then(/^I select services for third building "([^"]*)" - DA scenario two$/) do |building_name|
  #Building_three
  # click_on building_name
  # home.service_selection.routine_cleaning[3].click
  # home.service_selection.handyman_services[3].click
  # home.service_selection.move_space_manage[3].click
  # home.service_selection.car_park[3].click
  # home.service_selection.reception_services[3].click
  # home.service_selection.taxi_booking[3].click
  # home.service_selection.voice_announce[3].click
  # home.service_selection.cctv[3].click
  # home.service_selection.control_access[3].click
  # home.service_selection.emergency_response[3].click
  # home.service_selection.managements_visitor[3].click
  # home.service_selection.manned_guarding[3].click
  # home.service_selection.patrols_fixed[3].click
  #
  #
  click_on building_name
  service_requirements.birmingham_services.select_all.click
  service_requirements.birmingham_services.routine_cleaning.click
  service_requirements.birmingham_services.handyman_services.click
  service_requirements.birmingham_services.move_space_manage.click
  service_requirements.birmingham_services.car_park.click
  service_requirements.birmingham_services.reception_services.click
  service_requirements.birmingham_services.taxi_booking.click
  service_requirements.birmingham_services.voice_announce.click
  service_requirements.birmingham_services.cctv.click
  service_requirements.birmingham_services.control_access.click
  service_requirements.birmingham_services.emergency_response.click
  service_requirements.birmingham_services.managements_visitor.click
  service_requirements.birmingham_services.manned_guarding.click
  service_requirements.birmingham_services.patrols_fixed.click
end



Then(/^I select services for fourth building "([^"]*)" - DA scenario two$/) do |building_name|
  #building_one
  # click_on building_name
  # home.service_selection.classified_waste[1].click
  # home.service_selection.feminine_hygiene[1].click
  # home.service_selection.general_waste[1].click
  # home.service_selection.recycled_waste[1].click
  # home.service_selection.cafm[1].click
  # home.service_selection.helpdesk[1].click
  # home.service_selection.management_billable[1].click

  click_on building_name
  service_requirements.westminster_building_services.select_all.click
  service_requirements.westminster_building_services.classified_waste.click
  service_requirements.westminster_building_services.feminine_hygiene.click
  service_requirements.westminster_building_services.general_waste.click
  service_requirements.westminster_building_services.recycled_waste.click
  service_requirements.westminster_building_services.cafm.click
  service_requirements.westminster_building_services.helpdesk.click
  service_requirements.westminster_building_services.management_billable.click
end



Then(/^I select all services for second building$/) do
  home.checkbox_multiple_building[0].click
  # home.checkbox_multiple_building[1].click
end

And(/^I enter (.+) for routine cleaning$/) do |value|
  home.service_info_volume.routine_cleaning.set(value)
end

And(/^I enter (.+) for routine cleaning - scenario four$/) do |value|
  home.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for general waste$/) do |value|
  home.service_info_volume.general_waste_two.set(value)
end

And(/^I enter (.+) for general waste scenario one b$/) do |value|
  home.service_info_volume.general_waste.set(value)
end

And(/^I enter (.+) for general waste for scenario zero$/) do |value|
  home.service_info_volume.general_waste_three.set(value)
end

And(/^I enter (.+) for routine cleaning for scenario zero$/) do |value|
  home.service_info_volume.routine_cleaning_three.set(value)
end

And(/^I enter (.+) for mobile cleaning services$/) do |value|
  home.service_info_volume.mobile_cleaning.set(value)
end

And(/^I enter (.+) for recycled waste$/) do |value|
  home.service_info_volume.recycled_waste.set(value)
end

And(/^I enter (.+) for routine cleaning - AV scenario four$/) do |value|
  home.service_info_volume.routine_cleaning_five.set(value)
end


And(/^I enter (.+) for general waste - AV scenario four$/) do |value|
  home.service_info_volume.general_waste_five.set(value)
end

And(/^I enter (.+) for recycled waste - AV scenario four$/) do |value|
  home.service_info_volume.recycled_waste_three.set(value)
end


And(/^I enter (.+) for first lift$/) do |value|
  home.lift_one.set(value)
end


And(/^I enter (.+) for lift one$/) do |value|
  home.lift_one.set(value)
  click_on "Add new lift (98 remaining)"
end

And(/^I enter (.+) for lift two$/) do |value|
  home.lift_two.set(value)
  home.add_lift_button_two.click
end


And(/^I enter (.+) for lift three$/) do |value|
  home.lift_three.set(value)
  home.add_lift_button_three.click
end

And(/^I enter (.+) for lift four$/) do |value|
  home.lift_four.set(value)
  home.add_lift_button_four.click
end

And(/^I enter (.+) for lift five$/) do |value|
  home.lift_five.set(value)
end

And(/^I enter (.+) for portable appliance testing$/) do |value|
  home.service_info_volume.portable_appliance.set(value)
end

And(/^I enter (.+) for mobile cleaning service two$/) do |value|
  home.service_info_volume.mobile_cleaning_two.set(value)
end

And(/^I enter (.+) for portable appliance testing - DA one$/) do |value|
  service_requirements.portable_appliance_volume.set(value)
end


And(/^I enter (.+) for cleaning of external areas - DA one$/) do |value|
  service_requirements.mobile_cleaning_volume.set(value)
end

And(/^I enter (.+) for mobile cleaning service - DA one$/) do |value|
  service_requirements.cleaning_external_area.set(value)
end

And(/^I enter (.+) for routine cleaning - DA one$/) do |value|
  service_requirements.routine_cleaning_volume.set(value)
end

And(/^I enter (.+) for classified waste - DA one$/) do |value|
  service_requirements.classified_waste_volume.set(value)
end

And(/^I enter (.+) for feminine hygiene waste - DA one$/) do |value|
  service_requirements.feminine_hygiene_volume.set(value)
end

And(/^I enter (.+) for general waste - DA one$/) do |value|
  service_requirements.general_waste_volume.set(value)
end

And(/^I enter (.+) for recycled waste - DA one$/) do |value|
  service_requirements.recycled_waste_volume.set(value)
end

Then(/^I select all day service for Monday to Friday$/) do
  home.service_hours.all_day[0].click
  home.service_hours.copy_details.click
end

Then(/^I select not required for Saturday and Sunday$/) do
  home.service_hours.saturday_not_required.click
  home.service_hours.sunday_not_required.click
end

Then(/^I select all day service for Saturday and Sunday$/) do
  home.service_hours.saturday_all_day.click
  home.service_hours.sunday_all_day.click
end

Then(/^I select not required for Tuesday to Sunday$/) do
  home.service_hours.not_required[1].click
  home.service_hours.not_required[2].click
  home.service_hours.not_required[3].click
  home.service_hours.not_required[4].click
  home.service_hours.not_required[5].click
  home.service_hours.not_required[6].click
end

Then(/^I select all day service for Monday$/) do
  home.service_hours.all_day[0].click
end



And(/^I should see the partial price value (.+)$/) do |value|
  expect(home.choose_contract_value[1].text).to start_with(value)
end

Then(/^unpriced service "([^"]*)" should be displayed$/) do |unpriced_service|
  home.choose_contract.summary_text.click
  expect(home.choose_contract.unpriced_service.text).to eq(unpriced_service)
end



Then(/^I click on second building - multiple building$/) do
  expect(home.your_buildings.building_name[1].text).to eq("#{@building_twelve} (0 selected)")
  home.your_buildings.building_name[1].click
end

Then(/^The direct award option should not be displayed$/) do
  expect(home.market_route).to have_no_radio_items[0]
  expect(home.market_route).to have_no_radio_items[1]
  expect(home.market_route).to have_no_radio_items[2]

end

Then(/^I should see "([^"]*)" as the only available route to market$/) do |market_route|
  expect(home.fc_header.text).to eq(market_route)
end

And(/^I enter (.+) for number of personnel$/) do |value|
  service_requirements.number_of_personel.set(value)
end