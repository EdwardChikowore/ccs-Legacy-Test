Given("I am logged in to supply teachers") do
    visit '/supply-teachers'
    step 'I click on "Start now"'
    step 'I am on "Sign in to find supply teachers and agency workers" page'
    step 'I click on "Sign in with CCS"'
    step 'I sign in to the buyer account'
    step 'I am logged in successfully'
  end

  Then("I am on the Supply Teachers start page") do
    step 'I am on "What is your school looking for?
    " page'
  end
  
  When("I click on a st supplier name") do
    #common.results_list[0].click
    common.results_list_mc[0].click
  end

  Given("I should see multiple agencies") do
     expect(page.find('#main-content > div.govuk-grid-row > div > p > strong').text[0..-9].to_i > 0).to be true
  end

  Given("I click on an agency name") do
    common.agency_details_name.click
  end

  Given("I am on Agency details page") do
    expect(common.agency_details_title.text).to eq('Agency details')
 end

 When(/^I enter postcode as "([^"]*)"$/) do |postcode|
 common.postcode.set(postcode)
end

When("I enter agency_rate as {string}") do |agency_rate|
  common.daily_rate.set(agency_rate).click
end

Then("I should see agency {string}") do |agency|
  expect(common.agency_name.text).to eq('Danluker Limited t/a Supply Care Solutions')
end

When("I enter salary as {string}") do |salary|
  calc_fees.salary.set(salary)
end

Then("I enter full employment start day as {string}") do |day|
  calc_fees.full_employ_start_date.emp_start_day.set(day)
end

Then("I enter full employmeny start month as {string}") do |month|
  calc_fees.full_employ_start_date.emp_start_month.set(month)
end

Then("I enter full employment start year as {string}") do |year|
  calc_fees.full_employ_start_date.emp_start_year.set(year)
end

When("I enter fixed term fee as {string}") do |fee|
  calc_fees.fee.set(fee)
end

