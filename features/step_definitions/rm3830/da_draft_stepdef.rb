When('I answer the {string} contract detail question') do |contract_detail|
  dadraft.contract_details.send(contract_detail.to_sym).question.click
end

Then('my answer to the {string} contract detail question is {string}') do |contract_detail, answer|
  expect(dadraft.contract_details.send(contract_detail.to_sym).answer).to have_content(answer)
end

Then('the following buildings are missing regions:') do |table|
  expect(dadraft.missing_regions.find_all('tr > td:nth-child(1)').map(&:text)).to eq table.raw.flatten
end

And('the following is displayed for contact details:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('div.govuk-form-group', text: item)
  end
end

Given('I select {string} for the contact details') do |option|
  page.execute_script('arguments[0].scrollIntoView(true)', dadraft.enter_new_contact_detail.send(option.to_sym))

  dadraft.enter_new_contact_detail.send(option.to_sym).choose
end

Given('I select the buyer details for the contact details') do
  dadraft.buyer_details.choose
end

Then('I should see {string} for the contact detail name') do |name|
  expect(dadraft.contact_detail.name).to have_content(name)
end

Then('I should see {string} for the contact detail address') do |address|
  expect(dadraft.contact_detail.address).to have_content(address)
end

Then('my {string} contact detail name is {string}') do |contact_detail, name|
  expect(dadraft.contract_details.send(contact_detail.to_sym).name).to have_content name
end

Then('my {string} contact details are as follows:') do |contact_detail, contact_details|
  full_contact_details = contact_details.raw.flatten

  answer = if full_contact_details.size == 3
             "#{full_contact_details[0]}\nTelephone: #{full_contact_details[1]}\nAddress: #{full_contact_details[2]}"
           else
             "#{full_contact_details[0]}\nAddress: #{full_contact_details[1]}"
           end

  expect(dadraft.contract_details.send(contact_detail.to_sym).contact_detail.text).to eq answer
end

Then('I open the details for the {string}') do |contact_detail|
  dadraft.contract_details.send(contact_detail.to_sym).name.click
end

Then('I change my contact detail address') do
  dadraft.change_address.click
end

Given('I pick {string} for the payment method') do |payment_method|
  dadraft.choose(payment_method)
end

Given('I select {string} for the LGPS question') do |option|
  dadraft.choose(option)
end

Given('I pick {string} for the governing law') do |law|
  dadraft.choose(law)
end

Given('I select {string} for the security policy document question') do |option|
  dadraft.choose(option)
end

When('I add {int} pension funds') do |number_of_pension_funds|
  number_of_pension_funds.times do |n|
    step "I click on 'Add another pension fund (#{98 - n} remaining)'"
  end
end

And('I should see address:') do |table|
  expect(dadraft.selected_address_container.text).to eq(table.transpose.raw.flatten.join("\n"))
end

And('contract documents page have links') do
  expect(dadraft.contract_document_link.count).to eq(28)
end

Then('the lowest priced supplier is {string} and contract price is {string}') do |supplier, contract_price|
  expect(dadraft.lowest_supplier_name.text).to eq(supplier)
  expect(dadraft.lowest_supplier_price.text).to eq(contract_price)
end

When('supplier number {int} contract price is {string}') do |supplier_number, contract_price|
  supplier = dadraft.subsequent_supplier[supplier_number - 2]

  expect(supplier.supplier_name.text).to eq("Supplier #{supplier_number}")
  expect(supplier.contract_value.text).to eq(contract_price)
end

And('the following is displayed - review your contract:') do |table|
  table.transpose.raw.flatten.each do |item|
    expect(page).to have_css('ul li', text: item)
  end
end

Then('I complete the contract details') do
  step 'I answer the "Payment method" contract detail question'
  step 'I pick "BACS payment" for the payment method'
  step 'I click on "Save and return"'
  step 'I am on "Contract details" page'
  step 'I answer the "Invoicing contact details" contract detail question'
  step 'I select the buyer details for the contact details'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I answer the "Authorised representative details" contract detail question'
  step 'I select the buyer details for the contact details'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I answer the "Notices contact details" contract detail question'
  step 'I select the buyer details for the contact details'
  step 'I click on "Continue"'
  step 'I am on "Contract details" page'
  step 'I answer the "Security policy" contract detail question'
  step 'I select "No" for the security policy document question'
  step 'I click on "Save and return"'
  step 'I am on "Contract details" page'
  step 'I answer the "Local Government Pension Scheme" contract detail question'
  step 'I select "No" for the LGPS question'
  step 'I click on "Save and continue"'
  step 'I am on "Contract details" page'
  step 'I answer the "Governing law" contract detail question'
  step 'I pick "English Law" for the governing law'
  step 'I click on "Save and continue"'
  step 'I am on "Contract details" page'
end
