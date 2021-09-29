
# And(/^I click on child law services$/) do 
#   page.execute_script("document.querySelector('#service_WPSLS-1-3').click()")
# end

# And(/^I click on court of protection services$/) do 
#   page.execute_script("document.querySelector('#service_WPSLS-1-4').click()")
# end

# And(/^I click on Debt recovery services$/) do 
#   page.execute_script("document.querySelector('#service_WPSLS-1-6').click()")
# end

# And(/^I click on Employment services$/) do 
#   page.execute_script("document.querySelector('#service_WPSLS-1-12').click()")
# end


# And(/^I click on Contracts services$/) do 
#   page.execute_script("document.querySelector('#service_WPSLS-2a-3').click()")
# end

When("I click on Litigation / dispute resolution") do
  page.execute_script("document.querySelector('#service_WPSLS-1-10').click()")
end

When("I click on Property and construction") do
  page.execute_script("document.querySelector('#service_WPSLS-1-1').click()")
end

# And(/^I click on North East region$/) do 
#   page.execute_script("document.querySelector('#region_UKC').click()")
# end

When("I click on North West region") do
  page.execute_script("document.querySelector('#region_UKD').click()")
end

When("I click on Yorkshire and The Humber region") do
  page.execute_script("document.querySelector('#region_UKE').click()")
end

When("I click on East Midlands region") do
  page.execute_script("document.querySelector('#region_UKF').click()")
end

When("I click on West Midlands region") do
  page.execute_script("document.querySelector('#region_UKG').click()")
end

When("I click on East of England region") do
  page.execute_script("document.querySelector('#region_UKH').click()")
end
