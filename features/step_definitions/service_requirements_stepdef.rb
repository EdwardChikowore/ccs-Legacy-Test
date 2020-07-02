
And(/^I am on "([^"]*)" page - one$/) do |header|
  result_page= (home.header_one.text).end_with?('Results')
  contract_value_page= (home.header_one.text).end_with?('Estimated contract cost')
  detailed_search_page = (home.header_one.text).end_with?(header)
  if result_page
    click_on 'Change requirements'
  elsif detailed_search_page
    expect(home.header_one.text).to end_with(header)
  elsif contract_value_page
    click_on 'Change requirements'
  end
end

And(/^The estimated annual cost value is "([^"]*)"$/) do |value|
  expect(detailed_summary.value[1].text).to eq(value)
end

And(/^Tupe is set to "([^"]*)"$/) do |value|
  expect(detailed_summary.value[2].text).to eq(value)
end

And(/^The initial call-off period is "([^"]*)"$/) do |value|
  expect(detailed_summary.value[4].text).to eq(value)
end

And(/^The first volume for scenario zero "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[2].name.text).to eq(service)
  expect(service_requirements.volume[2].text).to eq(volume)
end

And(/^The second volume for scenario zero "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[3].name.text).to eq(service)
  expect(service_requirements.volume[3].text).to eq(volume)
end

And(/^The second volume for number of building occupants for scenario zero is "([^"]*)"$/) do |volume|
  expect(service_requirements.volume[4].text).to eq(volume)
end

And(/^The third volume for scenario zero "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[5].name.text).to eq(service)
  expect(service_requirements.volume[6].text).to eq(volume)
end

And(/^The fourth volume for scenario zero b "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[7].name.text).to eq(service)
  expect(service_requirements.volume[7].text).to eq(volume)
end

And(/^The fourth volume for scenario zero "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[7].name.text).to eq(service)
  expect(service_requirements.volume[8].text).to eq(volume)
end

And(/^The fifth volume for scenario zero "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[9].name.text).to eq(service)
  expect(service_requirements.volume[9].text).to eq(volume)
end

And(/^The sixth volume for scenario four "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[10].name.text).to eq(service)
  expect(service_requirements.volume[10].text).to eq(volume)
end

And(/^The seventh volume for scenario four "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[11].name.text).to eq(service)
  expect(service_requirements.volume[11].text).to eq(volume)
end

And(/^The first volume for number of building occupants for scenario four is (.+)$/) do |volume|
  expect(service_requirements.volume[2].text).to eq(volume)
end

And(/^The first volume for scenario four "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[2].name.text).to eq(service)
  expect(service_requirements.volume[3].text).to eq(volume)
end

And(/^The second volume for scenario four "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[4].name.text).to eq(service)
  expect(service_requirements.volume[5].text).to eq(volume)
end

And(/^The third volume for scenario four "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[6].name.text).to eq(service)
  expect(service_requirements.volume[6].text).to eq(volume)
end

And(/^The first volume for scenario three "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[2].name.text).to eq(service)
  expect(service_requirements.volume[2].text).to eq(volume)
end

And(/^The second volume for scenario three "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[3].name.text).to eq(service)
  expect(service_requirements.volume[3].text).to eq(volume)
end

And(/^The third volume for scenario three "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[4].name.text).to eq(service)
  expect(service_requirements.volume[4].text).to eq(volume)
end

And(/^The fourth volume for the number of building occupants for scenario three is (.+)$/) do |volume|
  expect(service_requirements.volume[5].text).to eq(volume)
end

And(/^The fourth volume for scenario three "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[5].name.text).to eq(service)
  expect(service_requirements.volume[6].text).to eq(volume)
end

And(/^The fifth volume for scenario three "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[7].name.text).to eq(service)
  expect(service_requirements.volume[7].text).to eq(volume)
end

And(/^The sixth volume for scenario three "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[8].name.text).to eq(service)
  expect(service_requirements.volume[8].text).to eq(volume)
end

And(/^The first volume for total of number of floors for scenario zero five is (.+)$/) do |volume|
  expect(service_requirements.volume[2].text).to eq(volume)
end

And(/^The first volume for scenario zero five "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[2].name.text).to eq(service)
  expect(service_requirements.volume[3].text).to eq(volume)
end

And(/^The second volume for scenario zero five "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[4].name.text).to eq(service)
  expect(service_requirements.volume[4].text).to eq(volume)
end

And(/^The third volume for scenario zero five "([^"]*)" is (.+)$/) do |service, volume|

  expect(service_requirements.service_table[5].name.text).to eq(service)
  expect(service_requirements.volume[5].text).to eq(volume)
end

And(/^The fourth volume for scenario zero five "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[6].name.text).to eq(service)
  expect(service_requirements.volume[6].text).to eq(volume)
end

And(/^The fourth volume for the number of building occupants for scenario zero five "([^"]*)"$/) do |volume|
  expect(service_requirements.volume[7].text).to eq(volume)
end

And(/^The first volume for scenario four_b "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[2].name.text).to eq(service)
  expect(service_requirements.volume[2].text).to eq(volume)
end

And(/^The second volume for scenario four_b "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[3].name.text).to eq(service)
  expect(service_requirements.volume[3].text).to eq(volume)
end

And(/^The third volume for scenario four_b "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[4].name.text).to eq(service)
  expect(service_requirements.volume[4].text).to eq(volume)
end

And(/^The fourth volume for the number of building occupants for scenario four_b is (.+)$/) do |volume|
  expect(service_requirements.volume[5].text).to eq(volume)
end

And(/^The fourth volume for scenario four_b "([^"]*)" is "([^"]*)"$/) do |service, volume|
  expect(service_requirements.service_table[5].name.text).to eq(service)
  expect(service_requirements.volume[6].text).to eq(volume)
end

And(/^The fifth volume for scenario four_b "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[7].name.text).to eq(service)
  expect(service_requirements.volume[8].text).to eq(volume)
end

And(/^The sixth volume for scenario four_b "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[9].name.text).to eq(service)
  expect(service_requirements.volume[9].text).to eq(volume)
end

And(/^The seventh volume for scenario four_b "([^"]*)" is (.+)$/) do |service, volume|
  expect(service_requirements.service_table[10].name.text).to eq(service)
  expect(service_requirements.volume[10].text).to eq(volume)
end



And(/^The following services are listed$/) do |table|
  table.transpose.raw.flatten.each do |services|
    expect(page).to have_css('[data-module="govuk-details"]  div  ul  li', text: services)
  end

end




