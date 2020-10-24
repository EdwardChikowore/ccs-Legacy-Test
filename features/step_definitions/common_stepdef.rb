Given(/^I visit the FM start page$/) do
  common.load
end

Given(/^I visit the accessibility page$/) do
  visit ''
end

Given(/^I click on start detailed search$/) do
  common.start_detailed_search.click
end

Given(/^I click on start a procurement$/) do
  WaitUntil.wait_until(30) do
    expect(common.account_panels[1]).to be_visible
  end
  page.execute_script('arguments[0].scrollIntoView(true)', common.account_panels[1])
  click_on "Start a procurement"
end

Given(/^I click on manage my buildings link$/) do
  page.execute_script('arguments[0].scrollIntoView(true)', common.account_links[0])
  click_on "Manage my buildings"
end

Then(/^I should see the navigation panel has sign out link$/) do
  # page('ul#navigation > li:nth-child(2) > a'')
  expect(common.banner.signout_banner.text).to eq("Sign out")
end

Given(/^I am on your account page$/) do
  expect(common.your_account_title.text).to eq("Your account")
end

Then("The page should have heading called {string}") do |string|
  page.first("h1.govuk-heading-xl").text.should eq(string)
end

And(/^I start the journey$/) do
  click_link "Start now"
  page.first("h1.govuk-heading-xl").text.should eq("CCS Marketplace private beta")
end



And(/^I am on the "([^"]*)" page$/) do |text|
  expect(common.header.text).to eq(text)
end

And(/^I am on "([^"]*)" page$/) do |text|
  expect(common.header_one.text).to end_with(text)
end

And(/^I should see the "([^"]*)" page$/) do |text|
  expect(common.header_one.text).to end_with(text)
end

And(/^I am on "([^"]*)" and "([^"]*)" page$/) do |heading, sub_heading|
  expect(common.header_one.text).to end_with(heading)
  expect(common.header_three.text).to eq(sub_heading)
end

And(/^I click on the "([^"]*)"$/) do |text|
  check text
end

And(/^I click on the "([^"]*)" option$/) do |text|
  choose text
end

Then(/^the following home page content is displayed:$/) do |table|
  page_text = common.your_account_page.text

  table.transpose.raw.flatten.each do |item|
    expect(page_text).to include(item)
  end
end

And(/^The up to 7m is displayed$/) do 
  expect(common.long_list.up_to_7m.text).to eq("up to £7m")
end

And(/^The sublot 1a is displayed$/) do
  expect(common.long_list.sublot_1a.text).to eq(text)
end

And(/^The between 7m and 50m is displayed$/) do 
  expect(common.long_list.between_7_and_50.text).to eq("between £7m-50m")
end

And(/^The sublot 1b is displayed:$/) do |text|
  expect(common.long_list.sublot_1b.text).to eq(text)
end

And(/^The over 50m is displayed$/) do
  expect(common.long_list.over_50.text).to eq("over £50m")
end

And(/^The sublot 1c is displayed:$/) do |text|
  expect(common.long_list.sublot_1c.text).to eq(text)
end

Then(/^I click to start a new procurement$/) do
  click_on 'Quick search'
end

Then(/^I am on the service selection page$/) do
  expect(common.service_header.text).to eq("Select the facilities management services that you need")
end

Then(/^I click on Maintenance services$/) do
  common.service_accordion.section_heading.section_button.click
end

Then(/^I select Mechanical and electrical maintenance$/) do
  common.service_accordion.section_heading.section_content.chooser_input[0].chooser_checkbox.click
end

Then(/^I should see my selection in the basket$/) do
  expect(common.service_basket.selected_service_msg.text).to eq("Mechanical and electrical engineering maintenance")
end

Then(/^I click continue$/) do
  click_on 'continue'
end

Then(/^I select services with no service questions$/) do
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

Then(/^I click on a North East England$/) do
  common.region_accordion.section_button.click
end

Then(/^I select Tees Valley and Durham$/) do
  common.region_accordion_content.checkbox.input[0].click
end

Then(/^I should see my selection in the region basket$/) do
  expect(common.region_basket.region_div.selected_region_msg[0].text).to eq("Tees Valley and Durham")
end

Then(/^I click the change link$/) do
  common.filter_panel.service.filter_container[1].click
end

Then(/^I add a service$/) do
  common.service_accordion.section_heading.section_content.chooser_input[1].chooser_checkbox.click
end

Then(/^I should see number of services selected$/) do
  expect(common.filter_panel.service.summary.text).to eq("2 selected")
end

Then(/^I click the service list$/) do
  common.filter_panel.service.summary.click
end

Then(/^I click the service list should be visible$/) do
  expect(common.filter_panel.service.details_open).to be_visible
end

Then(/^I should see two services$/) do
  expect(common.filter_panel.service.list.count).to eq(2)
end

Then(/^I should see the service listed$/) do
  expect(common.filter_panel.service.list[0].text).to eq("Mechanical and electrical engineering maintenance")
  expect(common.filter_panel.service.list[1].text).to eq("Ventilation and air conditioning system maintenance")
end

Then(/^I add contract name$/) do
  @name = "Auto_" + SecureRandom.uuid
  common.contract_name.set(@name)
  puts @name
end

Then(/^I add duplicate contract name$/) do
  common.contract_name.set(@name)
  puts @name
end

Then(/^I add building name$/) do
  @name = "z_auto" + SecureRandom.uuid
  common.building_name.set(@name)
end

Then(/^I click on contract name$/) do
  click_on @name
end

Then(/^I change contract name$/) do
  @name_change = "Change_contract_name_DS_" + SecureRandom.uuid
  common.contract_name.set(@name_change)
end

Then(/^The contract name should include "([^"]*)"$/) do |value|
  expect(detailed_summary.procurement_name[1].text).to start_with(value)
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
  common.summary_question_section[1].question_link.click
end

Then(/^I click to answer TUPE question$/) do
  common.summary_question_section[2].question_link.click
end

Then(/^I click to answer contract date question$/) do
  common.answer_question[3].click
end

Then(/^I click to answer building question$/) do
  common.answer_question[2].click
end

Then(/^I click to answer services question$/) do
  common.answer_question[1].click
end

Then(/^I select yes$/) do
  common.estimated_cost.radio_yes.set(true)
end

Then(/^I enter the cost (\d+)$/) do |cost|
  common.estimated_cost.radio_content.input.set(cost)
end

# Then(/^I enter the mobilisation period for (\d+) weeks$/) do |weeks|
#   common.mobilisation_radio.period.set(weeks)
# end

Then(/^I enter the mobilisation period for (\d+) weeks$/) do |weeks|
  common.mobilisation_radio.period.set(weeks)
end

Then(/^I enter the mobilisation period for "([^"]*)" weeks$/) do |weeks|
  common.mobilisation_radio.period.set(weeks)
end

Then(/^I select yes for TUPE$/) do
  common.tupe_yes.set(true)
end

Then(/^I enter the number of year as "([^"]*)"$/) do |years|
  common.initial_call_off_period.set(years)
end

Then(/^I enter the day as "([^"]*)"$/) do |day|
  common.initial_start_date.day.set(day)
end

Then(/^I enter the month as "([^"]*)"$/) do |month|
  common.initial_start_date.month.set(month)
end

Then(/^I enter the year as "([^"]*)"$/) do |year|
  common.initial_start_date.year.set(year)
end

Then(/^I select "(.+)" for TUPE$/) do |radio|
  common.mobilisation_radio.yes.set(radio)
end

Then(/^I enter number of weeks as "([^"]*)"$/) do |weeks|
  common.mobilisation_radio.period.set(weeks)
end

Then(/^I select (.+) for optional call off extension$/) do |radio|
  common.procurement_extension_radio.no.set(radio)
end


Then(/^I click on add another extension period$/) do
  common.procurement_extension_radio.add_extension_period.click
end

Then(/^I enter (.+) year for extension period (.+)$/) do |year, extension_period|
  common.procurement_extension_radio.send("extension_#{extension_period}").set(year)
end

Then(/^I click on first building link "([^"]*)"$/) do 
  common.building_summary.first_building.click
end

Then(/^the first building is selected$/) do
  expect(common.your_buildings.building_name[0].text).to eq("#{@building_one} (0 selected)")
  # expect(common.your_buildings).to have_selector :css, 'li.active'
end

Then(/^I select "([^"]*)" for active building$/) do |service|
  expect(common.choose_service[0].text).to eq(service)
  common.choose_service[0].checkbox_items.input.click
end

Then(/^I click on second building$/) do
  expect(common.your_buildings.building_name[1].text).to eq("#{@building_two} (0 selected)")
  common.your_buildings.building_name[1].click
end

Then(/^I select "([^"]*)" for second building$/) do |service|
  expect(common.choose_service[6].checkbox_items.label.text).to eq(service)
  common.choose_service[6].checkbox_items.label.click
end

And(/^The following summary text is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(common.service_summary.text).to eq(item)
  end
end

And(/^The service caption text is displayed$/) do
  expect(common.quick_service_caption.text).to eq("Choose all facilities management services required within your estate, even if you want services in just one building. To see further information about services click on the 'Further details' link under each service. Alternatively, open the service specification document below and go to the relevant section.")
end

And(/^The service caption is displayed$/) do
  expect(common.service_caption.text).to eq("Choose all facilities management services required within your estate, even if you want services in just one building. To see further information about services click on the 'Further details' link under each service. Alternatively, open the service specification document below and go to the relevant section.")
end

Then(/^I select all services for selected building$/) do
  common.select_all.checkbox.click
end

Then(/^I click on a saved and return to detailed search$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I click on first building$/) do
  common.detailed_building_link[0].click
end

Then(/^I click on building$/) do
  common.detailed_building_link[5].click
end

Then(/^I click on Answer question$/) do
  click_link 'Answer question'
end

Then(/^I select standard A$/) do
  common.service_standard.value_a.click
end

Then(/^I select standard B$/) do
  common.service_standard.value_b.click
end

Then(/^I select standard C$/) do
  common.service_standard.value_c.click
end

Then(/^I select standard A for first service$/) do
  common.service_standard[0].value_a.click
end

Then(/^I select standard A for "([^"]*)"$/) do |service_name|
  expect(common.service_standard[0].name.text).to eq(service_name)
  common.service_standard[0].value_a.click
end

Then(/^I select standard B for "([^"]*)"$/) do |service_name|
  expect(common.service_standard[0].name.text).to eq(service_name)
  common.service_standard[0].value_b.click
end

Then(/^I select standard B for second service "([^"]*)"$/) do |service_name|
  expect(common.service_standard[1].name.text).to eq(service_name)
  common.service_standard[1].value_b.click
end

Then(/^I select standard A for second service$/) do
  common.service_standard[1].value_a.click
end

Then(/^I select standard A for third service$/) do
  common.service_standard[2].value_a.click
end

Then(/^I select standard A for fourth service$/) do
  common.service_standard[3].value_a.click
end

Then(/^I select standard A for fifth service$/) do
  common.service_standard[4].value_a.click
end

Then(/^I select standard A for sixth service$/) do
  common.service_standard[5].value_a.click
end

Then(/^I select standard A for seventh service$/) do
  common.service_standard[6].value_a.click
end

Then(/^I select standard A for eighth service$/) do
  common.service_standard[7].value_a.click
end

Then(/^I select standard A for ninth service$/) do
  common.service_standard[8].value_a.click
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

  expect(common.results_page.heading_two.text).to eq("£#{supplier_order.min}")
end

Then(/^I should see the price displayed (.+)$/) do |price|
  expect(common.results_page.estimated_cost[0].text).to eq(price)
end

Then(/^I click on the Direct award route to market$/) do
  common.market_route.direct_award.click
end

Then(/^the lowest priced supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.lowest_supplier_name.text).to eq(supplier)
  expect(common.lowest_supplier_price.text).to eq(contract_price)
end

Then(/^the first subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[0].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[0].details[1].text).to eq(contract_price)
end

Then(/^the second subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[1].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[1].details[1].text).to eq(contract_price)
end

Then(/^the third subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[2].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[2].details[1].text).to eq(contract_price)
end

Then(/^the fourth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[3].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[3].details[1].text).to eq(contract_price)
end

Then(/^the fifth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[4].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[4].details[1].text).to eq(contract_price)
end

Then(/^the sixth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[5].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[5].details[1].text).to eq(contract_price)
end

Then(/^the seventh subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[6].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[6].details[1].text).to eq(contract_price)
end

Then(/^the eighth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[7].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[7].details[1].text).to eq(contract_price)
end

Then(/^the ninth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[8].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[8].details[1].text).to eq(contract_price)
end

Then(/^the tenth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(common.subsequent_supplier[9].details[0].text).to eq(supplier)
  expect(common.subsequent_supplier[9].details[1].text).to eq(contract_price)
end


And(/^I click on the question for payment method$/) do
  common.contract_details.payment_method.click
end

And(/^I select Bacs payment$/) do
  common.payment_method_bacs.click
end

And(/^I select Government procurement card$/) do
  common.government_procurement_card.click
end

And(/^I click on change link for "([^"]*)"$/) do |name|
  expect(common.contract_details_text[1].text).to eq(name)
  common.contract_details_change_link[1].click
end

And(/^I click on the first question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[0].text).to eq(name)
  common.contract_details_change_link[0].click
end

And(/^I click on change for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[0].text).to eq(name)
  common.contract_details_change_link[0].click
end

And(/^I click on third change link for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[2].text).to eq(name)
  common.contract_details_change_link[2].click
end

And(/^I click on the second question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[1].text).to eq(name)
  common.contract_details_change_link[1].click
end

And(/^I click on the third question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[2].text).to eq(name)
  common.contract_details_change_link[2].click
end

And(/^I click on the fourth question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[3].text).to eq(name)
  common.contract_details_change_link[3].click
end

And(/^I click on the fifth question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[4].text).to eq(name)
  common.contract_details_change_link[4].click
end

And(/^I click on the sixth question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[5].text).to eq(name)
  common.contract_details_change_link[5].click
end

And(/^I click on the seventh question for "([^"]*)"$/)do |name|
  expect(common.contract_details_text[6].text).to eq(name)
  common.contract_details_change_link[6].click
end

And(/^I click on the question for invoicing contact details$/) do
  common.contract_details.invoicing_contact_details.click
end

And(/^I select invoicing contact$/) do
  common.buyer_invoice_details.click
end

And(/^I click on the question for Authorised representative details$/) do
  common.contract_details.authorised_representative_details.click
end

And(/^I select Authorised representative details$/) do
  common.buyer_authorised_details.click
end

And(/^I click on the question for Notices contact details$/) do
  common.contract_details.notices_contact_details.click
end

And(/^I select Notices contact details$/) do
  common.buyer_notice_details.click
end

And(/^I click on the question for Security policy$/) do
  common.contract_details.security_policy.click
end

And(/^I select Security policy option$/) do
  common.security_notice_false.click
end

And(/^I enter security name$/) do
  common.security_policy_name.set("CCS doc")
end

And(/^I enter policy number$/) do
  common.security_policy_number.set(12334)
end

And(/^I upload a document$/) do
  common.attach_file("facilities_management_procurement[security_policy_document_file]",'features/5Mb.docx' )
end

And(/^I click on the question for Local Government Pension Scheme$/) do
  common.contract_details.local_government_pension_scheme.click
end

And(/^I select pension option$/) do
  common.pension_option_false.click
end

And(/^I click on the question for Governing law$/) do
  common.contract_details.governing_law.click
end

Then(/^I should see the uom information$/) do
  @gia = common.gia_value[1].text.to_i
  expect(@gia).to eq(10)
end

Then(/^I click on a back to service information$/) do
  click_on 'Back to detailed search summary'
end

Then(/^I click on answer question link for lifts$/) do
  common.answer_question[8].click
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


Then(/^I click on save and return$/) do
  click_on 'Save and return'
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

And(/^I enter values for initial call-off period/) do
  common.initial_call_off_period.set(4)
  step "I enter values for the initial call-off period date"
end

And(/^I enter values for the initial call-off period date$/) do
  common.initial_start_date.day.set(12)
  common.initial_start_date.month.set(12)
  common.initial_start_date.year.set(2024)
end

Then(/^I select no option for tupe required$/) do
  choose "facilities_management_procurement_mobilisation_period_required_false"
end

And(/^I select no option for optional call-off extension$/) do
  choose "facilities_management_procurement_extensions_required_false"
end

And(/^I am on buildings page$/) do
  expect(common.header_one.text).to end_with("Buildings")
end


And(/^I am on building services selection page$/) do
  expect(common.header_one.text).to end_with("Which facilities management services do you need for each building?")
end

Then(/^I click on save and return to detailed search$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I click change on building name on detailed search summary$/) do
  common.answer_question[2].click
end

And(/^I am on service requirements page$/) do
  expect(common.header_one.text).to end_with("Service requirements")
end

Then(/^I click on answer question$/) do
  click_on 'Answer question'
end

And(/^I am on planned maintenance service page$/) do
  expect(common.header_one.text).to end_with("Planned maintenance (PPM) services standards")
end


Then(/^I click on save and return to service requirements$/) do
  click_on 'Save and return to service requirements'
end

And(/^The contract name status tag is "([^"]*)"$/)do |text|
  expect(common.contract_name_status_tag.text).to eq(text)
end

And(/^The estimated annual cost status tag is "([^"]*)"$/)do |text|
  expect(common.estimated_status_tag.text).to eq(text)
end

And(/^The TUPE status tag is "([^"]*)"$/)do |text|
  expect(common.tupe_status_tag.text).to eq(text)
end

And(/^The contract period status tag is "([^"]*)"$/)do |text|
  expect(common.contract_period_status_tag.text).to eq(text)
end

And(/^The buildings status tag is "([^"]*)"$/)do |text|
  expect(common.buildings_status_tag.text).to eq(text)
end

And(/^The services status tag is "([^"]*)"$/)do |text|
  expect(common.services_status_tag.text).to eq(text)
end

And(/^The assigning services to buildings status tag is "([^"]*)"$/) do |text|
  expect(common.assigned_status_tag.text).to eq(text)
end

And(/^The service requirements status tag is "([^"]*)"$/)do |text|
  expect(common.requirements_status_tag.text).to eq(text)
end

Then(/^I click on back to detailed search summary$/) do
  click_on 'Back to detailed search summary'
end

And(/^I am on results page$/) do
  expect(common.header_one.text).to end_with("Results")
end

Then(/^I click on continue to direct award$/) do
  click_on 'Continue to direct award'
end

Then(/^I click on save and return to detailed search summary$/) do
  click_on 'Save and return to detailed search summary'
end

Then(/^I click on estimated annual cost$/) do
  click_on 'Estimated annual cost'
end

Then(/^I click on TUPE$/) do
  click_on 'TUPE'
end

Then(/^I click on contract period$/) do
  click_on 'Contract period'
end

Then(/^I click on the first question$/) do
  common.answer_question[0].click
end

Then(/^I click on the service requirements summary question/) do
  common.service_summary_question.click
end

Then(/^I click on the service question$/) do
  common.service_question.click
end

Then(/^I click on save and continue$/) do
  click_on 'Save and continue'
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

Then(/^I click on the first building on building and services summary page$/) do
  service_requirements.answer_question.click
end

Then(/^I click on select all$/) do
  service_requirements.select_all.click
end

Then(/^I click on the first building on the service requirements summary page$/) do
  service_requirements.answer_question.click
end

Then(/^I click on service standards change link$/) do
  service_requirements.change_link[1].click
end

Then(/^I click on lot 1a$/) do
  common.estimated_cost_option.click
end

Then(/^I am on Assigning services to buildings summary page$/) do
  expect(common.header_one.text).to end_with("Assigning services to buildings summary")
end

Then(/^I am on service requirements summary page$/) do
  expect(common.header_one.text).to end_with("Service requirements summary")
end

Then(/^I click on service requirements link$/) do
  click_on "Service requirements"
end

Then(/^I am on contract period summary page$/) do
  expect(common.header_one.text).to end_with("Contract period summary")
end

Then(/^I click on services link$/) do
  click_on "Services"
end

Then(/^I click on return to service requirements summary link$/) do
  click_on "Return to service requirements summary"
end

Then(/^I click on continue to results$/) do
  sleep 2
  click_on "Continue to results"
end

Then(/^I select english law$/) do
  common.english_law.click
end

Then(/^I complete service requirements questions$/) do
  step "I click on service requirements link"
  step "I am on service requirements summary page"
  step "I click on the first building on the service requirements summary page"
  step "I click on Answer question"
  step "I select standard A"
end

Then(/^I navigate to results page$/) do
  step "I click on save and return"
  step "I click on return to service requirements summary link"
  step "I click on return to requirements"
  step "I click on continue to results"
end

Then(/^I navigate to buildings page$/) do
  step "I click on save and continue"
  step "I click on return to requirements"
  step "I click on buildings link"
  step "I am on buildings page"
end

Then(/^I navigate to services page$/) do
  step "I click on save and continue"
  step "I am on contract period summary page"
  step "I click on return to requirements"
  step "I click on services link"
  step "I click on open all"
end

Then(/^I navigate to Service requirements summary page$/) do
  step "I click on return to requirements"
  step "I click on service requirements link"
  step "I am on service requirements summary page"
end

Then(/^I navigate to Assigning services to buildings summary page$/) do
  step "I click on save and continue"
  step "I click on return to requirements"
  step "I click on assigning services to buildings link"
  step "I am on Assigning services to buildings summary page"
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

Then(/^I click change on building section$/) do
  common.answer_question[4].click
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

Then(/^I answer services question/) do
  step "I click to answer building question"
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

Then(/^I select building/) do
  step "I click on buildings link"
  step "I select first building"
  step "I click on save and continue"
  step "I click on return to requirements"
end

Then(/^I assign services to buildings/) do
  step "I click on assigning services to buildings link"
  step "I click on the first building on building and services summary page"
  step "I click on select all"
  step "I click on save and return"
  step "I click on return to requirements"
end

Then(/^I complete the contract details/) do
  step "I click on the question for payment method"
  step "I select Bacs payment"
  step "I click on \"Save and return\""
  step "I am on \"Contract details\" page"
  step "I click on the question for invoicing contact details"
  step "I select invoicing contact"
  step "I click on \"Continue\""
  step "I am on \"Contract details\" page"
  step "I click on the question for Authorised representative details"
  step "I select Authorised representative details"
  step "I click on \"Continue\""
  step "I am on \"Contract details\" page"
  step "I click on the question for Notices contact details"
  step "I select Notices contact details"
  step "I click on \"Continue\""
  step "I am on \"Contract details\" page"
  step "I click on the question for Security policy"
  step "I select Security policy option"
  step "I click on \"Save and return\""
  step "I am on \"Contract details\" page"
  step "I click on the question for Local Government Pension Scheme"
  step "I select pension option"
  step "I click on \"Save and continue\""
  step "I am on \"Contract details\" page"
  step "I click on the question for Governing law"
  step "I select english law"
  step "I click on \"Save and continue\""
  step "I am on \"Contract details\" page"
end

Then(/^I create a new procurement/) do
  step "I am a logged in user - buildings account"
  step "I am on your account page"
  step "I click on start a procurement"
  step "I am on \"What happens next\" page"
  step "I click on \"Continue\""
  step "I am on \"Contract name\" page"
  step "I add contract name"
  step "I click on \"Save and continue\""
  step "I am on \"Requirements\" page"
end
