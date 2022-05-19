# frozen_string_literal: true

When(/^I enter day as "([^"]*)"$/) do |day|
    calc_fees.contract_start_date.day.set(day)
  end
  
  When(/^I enter month as "([^"]*)"$/) do |month|
    calc_fees.contract_start_date.month.set(month)
  end
  
  When(/^I enter year as "([^"]*)"$/) do |year|
    calc_fees.contract_start_date.year.set(year)
  end
  
  When(/^I enter days per week contracted for as "([^"]*)"$/) do |days|
  calc_fees.days_per_week.set(days)
end

When("I enter {string} amount charge per day") do |amount|
  calc_fees.charge_per_day.set(amount)
end

When("I enter {string} for percentage agency mark up charge") do |mark_up|
  calc_fees.percentage_mark_up.set(mark_up)
end

When(/^I enter permanent start day as "([^"]*)"$/) do |day|
  calc_fees.hire_date.hire_day.set(day)
end

When(/^I enter permanent start month as "([^"]*)"$/) do |month|
  calc_fees.hire_date.hire_month.set(month)
end

When(/^I enter permanent start year as "([^"]*)"$/) do |year|
  calc_fees.hire_date.hire_year.set(year)
end

When(/^I enter agency notice day as "([^"]*)"$/) do |day|
  calc_fees.notify_agency_date.notice_day.set(day)
end

When(/^I enter agency notice month as "([^"]*)"$/) do |month|
  calc_fees.notify_agency_date.notice_month.set(month)
end

When(/^I enter agency notice year as "([^"]*)"$/) do |year|
  calc_fees.notify_agency_date.notice_year.set(year)
end

Then("I should see fee as {string}") do |fee|
expect(calc_fees.perm_fee.text).to eq(fee)
end



