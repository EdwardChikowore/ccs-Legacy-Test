# frozen_string_literal: true

And(/^I click on the question for payment method$/) do
  dadraft.contract_details.payment_method.click
end

And(/^I select Bacs payment$/) do
  dadraft.payment_method_bacs.click
end

And(/^I select invoicing contact$/) do
  dadraft.buyer_invoice_details.click
end

And(/^I click on the question for Authorised representative details$/) do
  dadraft.contract_details.authorised_representative_details.click
end

And(/^I select Authorised representative details$/) do
  dadraft.buyer_authorised_details.click
end

And(/^I click on the question for Notices contact details$/) do
  dadraft.contract_details.notices_contact_details.click
end

And(/^I select Notices contact details$/) do
  dadraft.buyer_notice_details.click
end

And(/^I click on the question for Security policy$/) do
  dadraft.contract_details.security_policy.click
end

And(/^I select Security policy option$/) do
  dadraft.security_notice_false.click
end

And(/^I enter security name$/) do
  dadraft.security_policy_name.set('CCS doc')
end

And(/^I enter policy number$/) do
  dadraft.security_policy_number.set(12_334)
end

And(/^I click on the question for Local Government Pension Scheme$/) do
  dadraft.contract_details.local_government_pension_scheme.click
end

And(/^I select pension option$/) do
  dadraft.pension_option_false.click
end

And(/^I click on the question for Governing law$/) do
  dadraft.contract_details.governing_law.click
end

Then(/^I select english law$/) do
  dadraft.english_law.click
end

And(/^there are buildings with missing regions$/) do
  expect(dadraft.missing_regions.find_all('tr > td:nth-child(1)').map(&:text)).to eq ['Test Bulk Upload Building 3',
                                                                                      'Test Bulk Upload Building 7']
end

And(/^I click on change link for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[1].text).to eq(name)
  dadraft.contract_details_change_link[1].click
end

And(/^I click on the first question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[0].text).to eq(name)
  dadraft.contract_details_change_link[0].click
end

And(/^I click on change for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[0].text).to eq(name)
  dadraft.contract_details_change_link[0].click
end

And(/^I click on third change link for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[2].text).to eq(name)
  dadraft.contract_details_change_link[2].click
end

And(/^I click on the second question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[1].text).to eq(name)
  dadraft.contract_details_change_link[1].click
end

And(/^I click on the third question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[2].text).to eq(name)
  dadraft.contract_details_change_link[2].click
end

And(/^I click on the fourth question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[3].text).to eq(name)
  dadraft.contract_details_change_link[3].click
end

And(/^I click on the fifth question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[4].text).to eq(name)
  dadraft.contract_details_change_link[4].click
end

And(/^I click on the sixth question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[5].text).to eq(name)
  dadraft.contract_details_change_link[5].click
end

And(/^I click on the seventh question for "([^"]*)"$/) do |name|
  expect(dadraft.contract_details_text[6].text).to eq(name)
  dadraft.contract_details_change_link[6].click
end

And(/^I click on the question for invoicing contact details$/) do
  dadraft.contract_details.invoicing_contact_details.click
end

And(/^The following is displayed for contact details:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-form-group', text: item)
  end
end

And(/^I should see contract details "([^"]*)" displayed$/) do |details|
  expect(dadraft.contract_details_value[0].text).to eq(details)
end

And(/^I should see the contract details:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(dadraft.contract_details_value[0].text).to eq(item)
  end
end

And(/^I should see the invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(dadraft.contract_details_value[0].text).to eq(details)
end

And(/^I should see the authorised representative details "([^"]*)" displayed$/) do |details|
  expect(dadraft.contract_details_value[2].text).to eq(details)
end

And(/^I should see new invoicing contract details "([^"]*)" displayed$/) do |details|
  expect(dadraft.contract_details_value[1].text).to eq(details)
end

And(/^I should see new invoicing contact details:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(dadraft.invoicing_contact_details.text).to eq(item)
  end
end

And(/^The payment method should be "([^"]*)"$/) do |details|
  expect(dadraft.review_contract_value_two[1].text).to eq(details)
end

And(/^I click on enter authorised representative address manually$/) do
  dadraft.enter_address_manually.click
end

And(/^I should see address:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(dadraft.selected_address_container.text).to eq(item)
  end
end

And(/^I select address "([^"]*)" from the drop down option$/) do |address|
  find("#address-results-container option[value='#{address}']").select_option
end

And(/^I should see authorised representative details:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(dadraft.authorised_contact_details.text).to eq(item)
  end
end

And(/^I click on change address$/) do
  dadraft.change_address.click
end

And(/^I expand the contact details$/) do
  dadraft.contract_details_value[0].click
end

And(/^I select Government procurement card$/) do
  dadraft.government_procurement_card.click
end

And(/^I expand the Initial call-off period$/) do
  dadraft.contract_details_value[0].click
end

And(/^I expand the Mobilisation period/) do
  dadraft.contract_details_value[1].click
end

And(/^I expand the Buildings and services$/) do
  dadraft.contract_details_value[1].click
end

And(/^I expand the Invoicing contact details - review your contract$/) do
  # @buyer_details = BUYER_DETAIL['buyer']['name_occupation']
  # @contract_details = BUYER_DETAIL['buyer']['contact_details']
  # expect(dadraft.contract_details_value[2].text).to end_with(@buyer_details)
  dadraft.contract_details_value[2].click
  # expect(dadraft.contract_details_value[2].text).to end_with(@contract_details)
end

And(/^I expand the Notices contact details - review your contract$/) do
  # expect(dadraft.contract_details_value[4].text).to end_with(@buyer_details)
  dadraft.contract_details_value[4].click
  # expect(dadraft.contract_details_value[4].text).to end_with(@contract_details)
end

And(/^contract documents page have links$/) do
  expect(dadraft.contract_document_link.count).to eq(28)
end

And(/^I click on enter invoicing address manually$/) do
  dadraft.enter_address_manually.click
end

Then(/^the lowest priced supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.lowest_supplier_name.text).to eq(supplier)
  expect(dadraft.lowest_supplier_price.text).to eq(contract_price)
end

Then(/^the first subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[0].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[0].details[1].text).to eq(contract_price)
end

Then(/^the second subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[1].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[1].details[1].text).to eq(contract_price)
end

Then(/^the third subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[2].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[2].details[1].text).to eq(contract_price)
end

Then(/^the fourth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[3].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[3].details[1].text).to eq(contract_price)
end

Then(/^the fifth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[4].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[4].details[1].text).to eq(contract_price)
end

Then(/^the sixth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[5].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[5].details[1].text).to eq(contract_price)
end

Then(/^the seventh subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[6].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[6].details[1].text).to eq(contract_price)
end

Then(/^the eighth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[7].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[7].details[1].text).to eq(contract_price)
end

Then(/^the ninth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[8].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[8].details[1].text).to eq(contract_price)
end

Then(/^the tenth subsequent supplier is "([^"]*)" and contract price is (.+)$/) do |supplier, contract_price|
  expect(dadraft.subsequent_supplier[9].details[0].text).to eq(supplier)
  expect(dadraft.subsequent_supplier[9].details[1].text).to eq(contract_price)
end

And(/^The following is displayed - review your contract:$/) do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('ul li', text: item)
  end
end

And(/^I should see text next to radio button "([^"]*)"$/) do |name|
  expect(dadraft.invoicing_contact_details.text).to eq(name)
end

Then(/^I complete the contract details/) do
  step 'I click on the question for payment method'
  step 'I select Bacs payment'
  step 'I click on "Save and return"'
  step 'I am on "Contract details" page'
  step 'I click on the question for invoicing contact details'
  step 'I select invoicing contact'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I click on the question for Authorised representative details'
  step 'I select Authorised representative details'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I click on the question for Notices contact details'
  step 'I select Notices contact details'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I click on the question for Security policy'
  step 'I select Security policy option'
  step 'I click on "Save and return"'
  step 'I am on "Contract details" page'
  step 'I click on the question for Local Government Pension Scheme'
  step 'I select pension option'
  step 'I click on save and continue button'
  step 'I am on "Contract details" page'
  step 'I click on the question for Governing law'
  step 'I select english law'
  step 'I click on "Save and continue"'
  step 'I am on "Contract details" page'
end
