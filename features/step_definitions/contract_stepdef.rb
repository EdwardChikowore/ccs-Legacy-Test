Given("I enter the following details into the form:") do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end

And(/^I select address "([^"]*)" from the drop down option$/) do |address|
  find("#buyer-details-postcode-lookup-results option[value='#{address}']").select_option
end

And(/^I select building region "([^"]*)" from the drop down option$/) do |address|
  find("[data-address_region='#{address}']").select_option
end

And(/^I select building address "([^"]*)" from the drop down option$/) do |address|
  find("[data-address_line_1='#{address}']").select_option
  sleep 1
end

And(/^The building region text displayed is "([^"]*)"$/) do |value|
  expect(common.building_region.text).to eq(value)
  sleep 1
end

And(/^The building address name displayed is "([^"]*)"$/) do |value|
  expect(common.building_address.text).to eq(value)
end

And(/^I should see name and job title "([^"]*)"$/) do |name|
  expect(common.invoicing_contact_details[1].name_job_details.text).to eq(name)
end

And(/^I should see text next to radio button "([^"]*)"$/) do |name|
  expect(common.invoicing_contact_details.text).to eq(name)
end

And(/^I should see new invoicing contact details to radio button "([^"]*)"$/) do |name|
  expect(common.invoicing_contact_details.text).to eq(name)
end

And(/^I should see authorised representative text next to radio button "([^"]*)"$/) do |name|
  expect(common.authorised_contact_details.text).to eq(name)
end

And(/^I should see notices contact detail text next to radio button "([^"]*)"$/) do |name|
  expect(common.notices_contact_details.text).to eq(name)
end

And(/^I click on "([^"]*)" option$/) do |option|
  find("input[value=#{option}]").click
end

And(/^I should see contract details "([^"]*)" displayed$/) do |details|
  expect(common.contract_details_value[0].text).to eq(details)
end

And(/^I should see the invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(common.contract_details_value[0].text).to eq(details)
end

And(/^I should see the authorised representative details "([^"]*)" displayed$/) do |details|
  expect(common.contract_details_value[2].text).to eq(details)
end


And(/^I should see new invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(common.contract_details_value[1].text).to eq(details)
end

And(/^The payment method should be "([^"]*)"$/) do |details|
  expect(common.review_contract_value_two[1].text).to eq(details)
end


And(/^I click on change address$/) do
  common.change_address.click
end

And(/^I expand the Invoicing contact details$/) do
  common.contract_details_value[0].click
end

And(/^I expand the Authorised representative details$/) do
  common.contract_details_value[1].click
end

And(/^I expand the Notices contact details$/) do
  common.contract_details_value[2].click
end

And(/^I expand the contact details$/) do
  common.contract_details_value[0].click
end

And(/^I expand the Initial call-off period$/) do
  common.contract_details_value[0].click
end

And(/^I expand the Mobilisation period/) do
  common.contract_details_value[1].click
end

And(/^I expand the Buildings and services$/) do
  common.contract_details_value[1].click
end

And(/^I expand the Invoicing contact details - review your contract$/) do
  @buyer_details = BUYER_DETAIL['buyer']['name_occupation']
  @contract_details = BUYER_DETAIL['buyer']['contact_details']
  expect(common.contract_details_value[2].text).to end_with(@buyer_details)
  common.contract_details_value[2].click
  expect(common.contract_details_value[2].text).to end_with(@contract_details)
end

And(/^I expand the Authorised representative details - review your contract$/) do
  expect(common.contract_details_value[3].text).to end_with(@buyer_details)
  common.contract_details_value[3].click
  expect(common.contract_details_value[3].text).to end_with(@contract_details)
end

And(/^I expand the Notices contact details - review your contract$/) do
  expect(common.contract_details_value[4].text).to end_with(@buyer_details)
  common.contract_details_value[4].click
  expect(common.contract_details_value[4].text).to end_with(@contract_details)
end

And(/^I should see "([^"]*)" and "([^"]*)" error$/) do |heading, error|
  expect(common.header.text).to eq(heading)
  expect(common.invoiving_contact_details_error.text).to eq(error)
end

And(/^I should see error message header "([^"]*)"$/) do |heading|
  expect(common.header.text).to eq(heading)

end

And(/^I should see the following error messages$/) do |table|
  table.transpose.raw.flatten.each do |heading|
    expect(page).to have_css('div.govuk-error-summary', text: heading)
  end
end


And(/^I should see address "([^"]*)" in the address container$/) do |address|
  expect(common.selected_address_container.text).to eq(address)

end

And(/^I click on enter invoicing address manually$/) do
  common.enter_invoice_manually.click
end

And(/^I click on enter authorised representative address manually$/) do
  common.enter_authorised_manually.click
end

And(/^I click on enter notices representative address manually$/) do
  common.enter_notices_manually.click
end

And(/^The following is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody tr th', text: item)
  end

end

And(/^The following detail is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('tbody  tr  td', text: item)
  end
end

And(/^The following is displayed for contact details:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-form-group', text: item)
  end
end

And(/^I should see the following sections:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div  h2', text: item)
  end
end

And(/^The following is displayed - review your contract:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('ul li', text: item)
  end
end

And(/^The following is displayed on quick search results:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#proc-CCS-fm-suppliers-long-list', text: item)
  end
end

And(/^The following is displayed on quick search filter section:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.filter-component-container', text: item)
  end
end

And(/^contract documents page have links$/) do
  expect(common.contract_document_link.count).to eq(30)
end


And(/^the following common page content is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#wrapper', text: item)
  end
end

And(/^I enter duplicate pension name$/) do
  common.pension_one_name.set('Pension One')
  common.pension_one_percentage.set(2)
  click_on "Add another pension fund (98 remaining)"
  common.pension_input_field[5].set('Pension One')
  common.pension_input_field[6].set(2)
end





