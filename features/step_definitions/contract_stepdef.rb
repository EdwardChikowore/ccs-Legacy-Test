Given("I enter the following details into the form:") do |table|
  table.raw.to_h.each do |field, value|
    fill_in field, with: value
  end
end


And(/^I select address "([^"]*)" from the drop down option$/) do |address|
  find("#buyer-details-postcode-lookup-results option[value='#{address}']").select_option
end

And(/^I should see name and job title "([^"]*)"$/) do |name|
  expect(home.invoicing_contact_details[1].name_job_details.text).to eq(name)
end

And(/^I should see text next to radio button "([^"]*)"$/) do |name|
  expect(home.invoicing_contact_details.text).to eq(name)
end

And(/^I should see new invoicing contact details to radio button "([^"]*)"$/) do |name|
  expect(home.invoicing_contact_details.text).to eq(name)
end

And(/^I should see authorised representative text next to radio button "([^"]*)"$/) do |name|
  expect(home.authorised_contact_details.text).to eq(name)
end


And(/^I should see notices contact detail text next to radio button "([^"]*)"$/) do |name|
  expect(home.notices_contact_details.text).to eq(name)
end


And(/^I click on "([^"]*)" option$/) do |option|
  find("input[value=#{option}]").click
end

And(/^I should see contract details "([^"]*)" displayed$/) do |details|
  expect(home.contract_details_value[0].text).to eq(details)
end

And(/^I should see the invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(home.contract_details_value[0].text).to eq(details)
end

And(/^I should see the authorised representative details "([^"]*)" displayed$/) do |details|
  expect(home.contract_details_value[2].text).to eq(details)
end


And(/^I should see new invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(home.contract_details_value[1].text).to eq(details)
end

And(/^The payment method should be "([^"]*)"$/) do |details|
  expect(home.review_contract_value_two[1].text).to eq(details)
end


And(/^I click on change address$/) do
  home.change_address.click
end

And(/^I expand the Invoicing contact details$/) do
  home.contract_details_value[0].click
end

And(/^I expand the Authorised representative details$/) do
  home.contract_details_value[1].click
end

And(/^I expand the Notices contact details$/) do
  home.contract_details_value[2].click
end

And(/^I expand the contact details$/) do
  home.contract_details_value[0].click
end

And(/^I expand the Initial call-off period$/) do
  home.contract_details_value[0].click
end

And(/^I expand the Mobilisation period/) do
  home.contract_details_value[1].click
end

And(/^I expand the Buildings and services$/) do
  home.contract_details_value[1].click
end

And(/^I expand the Invoicing contact details - review your contract$/) do
  @buyer_details = BUYER_DETAIL['buyer']['name_occupation']
  @contract_details = BUYER_DETAIL['buyer']['contact_details']
  expect(home.contract_details_value[2].text).to eq(@buyer_details)
  home.contract_details_value[2].click
  expect(home.contract_details_value[2].text).to eq(@contract_details)
end

And(/^I expand the Authorised representative details - review your contract$/) do
  expect(home.contract_details_value[3].text).to eq(@buyer_details)
  home.contract_details_value[3].click
  expect(home.contract_details_value[3].text).to eq(@contract_details)
end

And(/^I expand the Notices contact details - review your contract$/) do
  expect(home.contract_details_value[4].text).to eq(@buyer_details)
  home.contract_details_value[4].click
  expect(home.contract_details_value[4].text).to eq(@contract_details)
end

And(/^I should see "([^"]*)" and "([^"]*)" error$/) do |heading, error|
  expect(home.header.text).to eq(heading)
  expect(home.invoiving_contact_details_error.text).to eq(error)
end

And(/^I should see error message header "([^"]*)"$/) do |heading|
  expect(home.header.text).to eq(heading)

end

And(/^I should see the following error messages$/) do |table|
  table.transpose.raw.flatten.each do |heading|
    expect(page).to have_css('div.govuk-error-summary', text: heading)
  end
end


And(/^I should see address "([^"]*)" in the address container$/) do |address|
  expect(home.selected_address_container.text).to eq(address)

end

And(/^I click on enter invoicing address manually$/) do
  home.enter_invoice_manually.click
end

And(/^I click on enter authorised representative address manually$/) do
  home.enter_authorised_manually.click
end

And(/^I click on enter notices representative address manually$/) do
  home.enter_notices_manually.click
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
  expect(home.contract_document_link.count).to eq(28)
end


And(/^the following home page content is displayed:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('#wrapper', text: item)
  end
end

And(/^I enter duplicate pension name$/) do
  home.pension_one_name.set('Pension One')
  home.pension_one_percentage.set(2)
  click_on "Add another pension fund (98 remaining)"
  home.pension_input_field[5].set('Pension One')
  home.pension_input_field[6].set(2)
end





