Given("I am logged in to legal services") do
  visit '/legal-services'
  step 'I click on "Start now"'
  step 'I am on "Sign in to your legal services buyer account" page'
  step 'I sign in to the buyer account'
  step 'I am logged in successfully'
end

Then("I am on the legal services start page") do
  step 'I am on "Find legal services for the wider public sector" page'
 end

