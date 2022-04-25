Given("I am logged in to management consultancy") do
    visit '/management-consultancy'
    step 'I click on "Start now"'
    step 'I am on "Sign in to your management consultancy buyer account" page'
    step 'I sign in to the buyer account'
    step 'I am logged in successfully'
  end

  Then("I am on the Management Consultancy start page") do
    step 'I am on "Find management consultants" page'
  end
  
  When("I click on a mc supplier name") do
    #common.results_list[0].click
    common.results_list_mc[0].click
  end

  When ("I select the required legal services") do
    [
     "Partnerships",
     "Pensions",
     "Planning",
     "Projects",
     "Property, real estate & construction",
     "Public international law", 
     "Public procurement",
     "Restructuring and insolvency",
     "Tax",
     "Telecommunications",
     "The law of international trade, investment and regulation",
     "Transport law (excluding rail)"
    ].each do |service|
      step "I check '#{service}'"
    end
  end

