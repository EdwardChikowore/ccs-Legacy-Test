Given("I am logged in to supply teachers") do
    visit '/supply-teachers'
    step 'I click on "Start now"'
    step 'I am on "Sign in to find supply teachers and agency workers" page'
    step 'I click on "Sign in with Cognito"'
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

  #fill_in 'daily_rate[6241a58f-8b67-43f1-8698-1c4d84a9ff8f]', with: '50'