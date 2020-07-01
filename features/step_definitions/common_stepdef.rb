Given(/^I visit the FM start page$/) do
  home.load
end

Then("The page should have heading called {string}") do |string|
  page.first("h1.govuk-heading-xl").text.should eq(string)
end

And(/^I start the journey$/) do
  click_link "Start now"
  page.first("h1.govuk-heading-xl").text.should eq("CCS Marketplace private beta")
end

Then(/^I should see the navigation panel has sign out link$/) do
  # page('ul#navigation > li:nth-child(2) > a'')
  expect(home.banner.signout_banner.text).to eq("Sign out")
end

And(/^I am on the "([^"]*)" page$/) do |text|
  expect(home.header.text).to eq(text)
end

And(/^I am on "([^"]*)" page$/) do |text|
  expect(home.header_one.text).to end_with(text)
end

And(/^I should see the "([^"]*)" page$/) do |text|
  expect(home.header_one.text).to end_with(text)
end


And(/^I am on "([^"]*)" and "([^"]*)" page$/) do |heading, sub_heading|
  expect(home.multiple_heading[0].text).to eq(heading)
  expect(home.multiple_heading[1].text).to eq(sub_heading)
end

And(/^I click on the "([^"]*)"$/) do |text|
  check text
end

And(/^I click on the "([^"]*)" option$/) do |text|
  choose text
end


Then(/^I click to start a new procurement$/) do
  click_on 'Quick search'
end

Then(/^I am on the service selection page$/) do
  expect(home.service_header.text).to eq("Select the facilities management services that you need")
end

Then(/^I click on Maintenance services$/) do
  home.service_accordion.section_heading.section_button.click
end

Then(/^I select Mechanical and electrical maintenance$/) do
  home.service_accordion.section_heading.section_content.chooser_input[0].chooser_checkbox.click
end

Then(/^I should see my selection in the basket$/) do
  expect(home.service_basket.selected_service_msg.text).to eq("Mechanical and electrical engineering maintenance")
end

Then(/^I click continue/) do
  click_on 'Continue'
end

Then(/^I click on a North East England$/) do
  home.region_accordion.section_button.click
end

Then(/^I select Tees Valley and Durham$/) do
  home.region_accordion_content.checkbox.input[0].click
end

Then(/^I should see my selection in the region basket$/) do
  expect(home.region_basket.region_div.selected_region_msg[0].text).to eq("Tees Valley and Durham")
end

Then(/^I click the change link$/) do
  home.filter_panel.service.filter_container[1].click
end

Then(/^I add a service$/) do
  home.service_accordion.section_heading.section_content.chooser_input[1].chooser_checkbox.click
end

Then(/^I should see number of services selected$/) do
  expect(home.filter_panel.service.summary.text).to eq("2 selected")
end

Then(/^I click the service list$/) do
  home.filter_panel.service.summary.click
end

Then(/^I click the service list should be visible$/) do
  expect(home.filter_panel.service.details_open).to be_visible
end

Then(/^I should see two services$/) do
  expect(home.filter_panel.service.list.count).to eq(2)
end

Then(/^I should see the service listed$/) do
  expect(home.filter_panel.service.list[0].text).to eq("Mechanical and electrical engineering maintenance")
  expect(home.filter_panel.service.list[1].text).to eq("Ventilation and air conditioning system maintenance")
end

Then(/^I add contract name$/) do
  @name = "Auto_" + SecureRandom.uuid
  home.contract_name.set(@name)
  puts @name
end

Then(/^I change contract name$/) do
  @name_change = "Change_contract_name_DS" + SecureRandom.uuid
  home.contract_name.set(@name_change)
end

And(/^I contract name should include "([^"]*)"$/) do |value|
    expect(detailed_summary.value[0].text).to start_with(@name_change)
end


Then(/^I save the quick search result$/) do
  click_on 'Save for later'
end

Then(/^I click save and continue$/) do
  click_on 'Save and continue'
end


Then(/^I click on procurement dashboard$/) do
  click_on 'Procurements dashboard'
end

Then(/^I click on a saved procurement$/) do
  click_on 'Auto_af19913a-d29e-4d91-86d8-6e6a89b73310'
end

Then(/^I click to answer estimated annual cost question$/) do
  home.summary_question_section[1].question_link.click
end

Then(/^I click to answer TUPE question$/) do
  home.summary_question_section[2].question_link.click
end

Then(/^I click to answer contract date question$/) do
  home.answer_question[3].click
end

Then(/^I click to answer building question$/) do
  home.answer_question[4].click
end

Then(/^I click to answer services question$/) do
  home.answer_question[5].click
end

Then(/^I select yes$/) do
  home.estimated_cost.radio_yes.set(true)
end

Then(/^I enter the cost (\d+)$/) do |cost|
  home.estimated_cost.radio_content.input.set(cost)
end

Then(/^I enter the mobilisation period for (\d+) weeks$/) do |weeks|
  home.mobilisation_radio.period.set(weeks)
end

Then(/^I select yes for TUPE$/) do
  home.tupe_yes.set(true)
end

Then(/^I enter the number of year as "([^"]*)"$/) do |years|
  home.initial_call_off_period.set(years)
end

Then(/^I enter the day as "([^"]*)"$/) do |day|
  home.initial_start_date.day.set(day)
end

Then(/^I enter the month as "([^"]*)"$/) do |month|
  home.initial_start_date.month.set(month)
end

Then(/^I enter the year as "([^"]*)"$/) do |year|
  home.initial_start_date.year.set(year)
end

Then(/^I select "(.+)" for TUPE$/) do |radio|
  home.mobilisation_radio.yes.set(radio)
end

Then(/^I enter number of weeks as "([^"]*)"$/) do |weeks|
  home.mobilisation_radio.period.set(weeks)
end

Then(/^I select (.+) for optional call off extension$/) do |radio|
  home.procurement_extension_radio.no.set(radio)
end

Then(/^I enter (.+) year as the first extension period$/) do |year|
  home.procurement_extension_radio.extension_one.set(year)
end

Then(/^I click on add another extension period$/) do
  home.procurement_extension_radio.add_extension_period.click
end

Then(/^I enter (.+) year as the second extension period$/) do |year|
  home.procurement_extension_radio.extension_two.set(year)
end

Then(/^I select first building with address "([^"]*)"$/) do |building_address|

  # @building_one = home.building_one.name.text
  # expect(home.building_one.address.text).to eq(building_address)
  # home.building_one.address.click
end

Then(/^I select second building with address "([^"]*)"$/) do |building_address|
  @building_two = home.building_two.name.text
  expect(home.building_two.address.text).to eq(building_address)
  home.building_two.address.click
end

Then(/^the first building is selected$/) do
  expect(home.your_buildings.building_name[0].text).to eq("#{@building_one} (0 selected)")
  # expect(home.your_buildings).to have_selector :css, 'li.active'
end

Then(/^I select "([^"]*)" for active building$/) do |service|
  expect(home.choose_service[0].text).to eq(service)
  home.choose_service[0].checkbox_items.input.click
end

Then(/^I click on second building$/) do
  expect(home.your_buildings.building_name[1].text).to eq("#{@building_two} (0 selected)")
  home.your_buildings.building_name[1].click
end

Then(/^I select "([^"]*)" for second building$/) do |service|
  expect(home.choose_service[6].checkbox_items.label.text).to eq(service)
  home.choose_service[6].checkbox_items.label.click
end





Then(/^I select all services for selected building$/) do
  home.select_all.checkbox.click
end

Then(/^I click on a saved and return to detailed search$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I click on building$/) do
  home.detailed_building_link[5].click
end

Then(/^I click on Answer question$/) do
  click_link 'Answer question'
end

Then(/^I select standard A for first service$/) do
  home.service_standard[0].value_a.click
end

Then(/^I select standard A for "([^"]*)"$/) do |service_name|
  expect(home.service_standard[0].name.text).to eq(service_name)
  home.service_standard[0].value_a.click
end

Then(/^I select standard B for "([^"]*)"$/) do |service_name|
  expect(home.service_standard[0].name.text).to eq(service_name)
  home.service_standard[0].value_b.click
end

Then(/^I select standard B for second service "([^"]*)"$/) do |service_name|
  expect(home.service_standard[1].name.text).to eq(service_name)
  home.service_standard[1].value_b.click
end

Then(/^I select standard A for second service$/) do
  home.service_standard[1].value_a.click
end

Then(/^I select standard A for third service$/) do
  home.service_standard[2].value_a.click
end

Then(/^I select standard A for fourth service$/) do
  home.service_standard[3].value_a.click
end

Then(/^I select standard A for fifth service$/) do
  home.service_standard[4].value_a.click
end

Then(/^I select standard A for sixth service$/) do
  home.service_standard[5].value_a.click
end

Then(/^I select standard A for seventh service$/) do
  home.service_standard[6].value_a.click
end

Then(/^I select standard A for eighth service$/) do
  home.service_standard[7].value_a.click
end

Then(/^I select standard A for ninth service$/) do
  home.service_standard[8].value_a.click
end

Then(/^I click on a saved and return to service information$/) do
  click_on 'Save and return to service information'
end

Then(/^I should see the assessed value price$/) do
  # assessed_rate = TEST_DATA.by_row[3]['framework'].to_f + TEST_DATA.by_row[6]['framework'].to_f
  # assessed_rate = FM_RATES['framework_rates']['C1-A'].to_f
  # (uom, service_rate, service_reduction, building_occupants, cleaning_cost, london_variance, cafm, helpdesk, mobilisation_cost, tupe, management, corporate, profit, sub_year)

  supplier_one = da_calc_supplier_one(100, 0, "Y", 0, 0)
  supplier_two = da_calc_supplier_two(100, 0, "Y", 0, 0, 0)
  supplier_three = da_calc_supplier_three(100, 0, "Y", 0, 0, 0)

  supplier_order = [supplier_two.round, supplier_three.round, supplier_one.round]

  expect(home.results_page.heading_two.text).to eq("£#{supplier_order.min}")
end

Then(/^I should see the price displayed (.+)$/) do |price|
  expect(home.results_page.estimated_cost[0].text).to eq(price)
end

Then(/^I click on the Direct award route to market$/) do
  home.market_route.direct_award.click
end

Then(/^the lowest priced supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.lowest_supplier_name.text).to eq(supplier)
  expect(home.lowest_supplier_price.text).to eq(contract_price)
end

Then(/^the first subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[0].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[0].details[1].text).to eq(contract_price)
end

Then(/^the second subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[1].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[1].details[1].text).to eq(contract_price)
end

Then(/^the third subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[2].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[2].details[1].text).to eq(contract_price)
end

Then(/^the fourth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[3].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[3].details[1].text).to eq(contract_price)
end

Then(/^the fifth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[4].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[4].details[1].text).to eq(contract_price)
end

Then(/^the sixth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[5].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[5].details[1].text).to eq(contract_price)
end

Then(/^the seventh subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[6].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[6].details[1].text).to eq(contract_price)
end

Then(/^the eighth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[7].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[7].details[1].text).to eq(contract_price)
end

Then(/^the ninth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[8].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[8].details[1].text).to eq(contract_price)
end

Then(/^the tenth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(home.subsequent_supplier[9].details[0].text).to eq(supplier)
  expect(home.subsequent_supplier[9].details[1].text).to eq(contract_price)
end


And(/^I click on the question for payment method$/) do
  home.contract_details.answer_question[0].click
end

And(/^I select Bacs payment$/) do
  home.payment_method_bacs.click
end

And(/^I select Government procurement card$/) do
  home.government_procurement_card.click
end

And(/^I click on change link for "([^"]*)"$/) do |name|
  expect(home.contract_details_text[1].text).to eq(name)
  home.contract_details_change_link[1].click
end

And(/^I click on the first question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[0].text).to eq(name)
  home.contract_details_change_link[0].click
end

And(/^I click on change for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[0].text).to eq(name)
  home.contract_details_change_link[0].click
end

And(/^I click on third change link for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[2].text).to eq(name)
  home.contract_details_change_link[2].click
end

And(/^I click on the second question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[1].text).to eq(name)
  home.contract_details_change_link[1].click
end

And(/^I click on the third question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[2].text).to eq(name)
  home.contract_details_change_link[2].click
end

And(/^I click on the fourth question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[3].text).to eq(name)
  home.contract_details_change_link[3].click
end

And(/^I click on the fifth question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[4].text).to eq(name)
  home.contract_details_change_link[4].click
end

And(/^I click on the sixth question for "([^"]*)"$/)do |name|
  expect(home.contract_details_text[5].text).to eq(name)
  home.contract_details_change_link[5].click
end


And(/^I select invoicing contact$/) do
  home.buyer_invoice_details.click
end

And (/^I click on the question for Authorised representative details$/) do
  home.contract_details.answer_question[2].click
end

And(/^I select Authorised representative details$/) do
  home.buyer_authorised_details.click
end

And(/^I click on the question for Notices contact details$/) do
  home.contract_details.answer_question[3].click
end

And(/^I select Notices contact details$/) do
  home.buyer_notice_details.click
end

And(/^I click on the question for Security policy$/) do
  home.contract_details.answer_question[4].click
end

And(/^I select Security policy option$/) do
  home.security_notice_false.click
end


And(/^I enter security name$/) do
  home.security_policy_name.set("CCS doc")
end

And(/^I enter policy number$/) do
  home.security_policy_number.set(12334)
end

And(/^I upload a document$/) do
  home.attach_file("facilities_management_procurement[security_policy_document_file]",'features/5Mb.docx' )
end

And /^I click on the question for Local Government Pension Scheme$/ do
  home.contract_details.answer_question[5].click
end

And(/^I select pension option$/) do
  home.pension_option_false.click
end

Then(/^I should see the uom information$/) do
  @gia = home.gia_value[1].text.to_i
  expect(@gia).to eq(10)
end

Then(/^I click on a back to service information$/) do
  click_on 'Back to detailed search summary'
end

Then(/^I click on answer question link for lifts$/) do
  home.answer_question[8].click
end

Then(/^I click on continue$/) do
  click_on 'Continue'
end

# Then(/^I click on open all$/) do
#   click_on 'Open all'
# end

Then(/^I click on Tees Valley and Durham$/) do
  check "Tees Valley and Durham"
end


Then(/^I click on save and continue$/) do
  click_on 'Save and continue'
end

Then(/^I am on estimated annual cost page$/) do
  expect(home.multiple_heading[0].text).to eq("Estimated annual cost")
end

Then(/^I select no option for estimated annual cost$/) do
  choose 'facilities_management_procurement_estimated_cost_known_false'
end

Then(/^I select no option for tupe$/) do
  choose 'facilities_management_procurement_tupe_false'
end

And(/^I am on contract period page$/) do
  expect(home.header_one.text).to end_with("Contract period")
end

And(/^I am enter values for initial call-off period$/) do
    home.initial_call_off_period.set(4)
    home.initial_start_date.day.set(12)
    home.initial_start_date.month.set(12)
    home.initial_start_date.year.set(2024)
end

Then(/^I select no option for tupe required$/) do
  choose "facilities_management_procurement_mobilisation_period_required_false"
end

And(/^I select no option for optional call-off extension$/) do
  choose "facilities_management_procurement_extensions_required_false"
end

And(/^I am on buildings page$/) do
  expect(home.header_one.text).to end_with("Buildings")
end


And(/^I am on building services selection page$/) do
  expect(home.header_one.text).to end_with("Which facilities management services do you need for each building?")
end

Then(/^I click on save and return to detailed search$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I click change on building name on detailed search summary$/) do
  home.answer_question[6].click
end

And(/^I am on service requirements page$/) do
  expect(home.header_one.text).to end_with("Service requirements")
end

Then(/^I click on answer question$/) do
  click_on 'Answer question'
end

And(/^I am on planned maintenance service page$/) do
  expect(home.header_one.text).to end_with("Planned maintenance (PPM) services standards")
end


Then(/^I click on save and return to service requirements$/) do
  click_on 'Save and return to service requirements'
end

Then(/^I click on back to detailed search summary$/) do
  click_on 'Back to detailed search summary'
end

And(/^I am on results page$/) do
  expect(home.header_one.text).to end_with("Results")
end

Then(/^I click on continue to direct award$/) do
  click_on 'Continue to direct award'
end

Then(/^I click on save and return to detailed search summary$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I am on detailed search page$/) do
  step "I click on continue"
  step "I click on open all"
  step "I click on Tees Valley and Durham"
  step "I click on continue"
  step "I add contract name"
  step "I click on save and continue"
end

Then(/^I click change on building section$/) do
  home.answer_question[4].click
end


Then(/^I answer about the contract question$/) do
  step "I click to answer estimated annual cost question"
  step "I am on estimated annual cost page"
  step "I select no option for estimated annual cost"
  step "I click on save and continue"
  step "I select no option for tupe"
  step "I click on save and continue"
end

Then(/^I answer contract period question/) do
  step "I am on contract period page"
  step "I am enter values for initial call-off period"
  step "I select no option for tupe required"
  step "I select no option for optional call-off extension"
  step "I click on save and continue"
  step "I select first building"
  step "I click on save and return to detailed search summary"
end

Then(/^I answer services question/) do
  # step "I am on building services selection page"
  # step "I select all services"
  # step "I click on save and return to detailed search"
  step "I click change on building name on detailed search summary"
  step "I am on service requirements page"
  step "I click on answer question"
  step "I am on planned maintenance service page"
  step "I select standard A for first service"
  step "I click on save and return to service requirements"
  step "I click on back to detailed search summary"
  step "I click on continue"
end


Then(/^I proceed to the contract details page/) do
  step "I am on results page"
  step "I click on the Direct award route to market"
  step "I click on continue"
  step "I click on continue to direct award"
  step "I click on continue to direct award"
  step "I click on continue"
end

# Then(/^I select all maintenance services/) do
#   home.maintenance_select_all.click
# end

