Given("I am logged in to legal services") do
  visit '/legal-services'
  step 'I click on "Start now"'
  step 'I am on "Sign in to your legal services buyer account" page'
  step 'I sign in to the buyer account'
  step 'I am logged in successfully'
end

And(/^I click on child law services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-3').click()")
end

And(/^I click on court of protection services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-4').click()")
end

And(/^I click on Debt recovery services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-6').click()")
end

And(/^I click on Employment services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-1-12').click()")
end

And(/^I click on Contracts services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-3').click()")
end

And(/^I click on Projects services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-20').click()")
end

And(/^I click on Tax services$/) do 
  page.execute_script("document.querySelector('#service_WPSLS-2a-17').click()")
end

Then("I am on the legal services start page") do
  step 'I am on "Find legal services for the wider public sector" page'
end
