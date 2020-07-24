@accessibility
Feature:  FM - Accessibility

  Scenario:  FM - Home page
    Given I visit the FM start page
    Then the page should be accessible

  Scenario:  FM - Login page
    Given I visit the FM start page
    When I click on "Start now"
    And I click on "Sign in with Cognito"
    Then the page should be accessible

  Scenario: FM - Procurement page
    Given I am a logged in user
    When I am on your account page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    Then the page should be accessible

# Timeout
#  Scenario: FM - Manage procurements page
#    Given the user is on the "FM Home" page
#    When I click on "Start now"
#    When I click on "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page

# Timeout
#  Scenario: FM - Manage buildings page
#    Given the user is on the "FM Home" page
#    When I click on "Start now"
#    When I click on "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page

## FM-1046
#  Scenario: FM - Manage buildings - Select Building - Detailed building summary
#    Given the user is on the "FM Home" page
#    When I click on "Start now"
#    When I click on "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And I click on "Auto Test 1"

# Minor defect
#  Scenario: FM - Manage buildings - Add a building - Step 1
#    Given the user is on the "FM Home" page
#    When I click on "Start now"
#    When I click on "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And I click on "Add a building"
#    And I click on "Save and continue"

# obsolete
#  Scenario: FM - Manage buildings - Create Building - Continue
#    Given the user is on the "FM Home" page
#    When I click on "Start now"
#    When I click on "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And I click on "Create Single Building"
#    And user is on "Create Single Building" page

# Minor
  Scenario: FM - Manage buildings - Add Building - Add address page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Manage buildings"
    When I click on "Add a building"
    And I am on "Add a building" page
    Then the page should be accessible


#  Scenario: FM - Start a new procurement page - Open Services - Maintenance
    # Given I am a logged in user
    # When I click on "Quick view suppliers"
    # And I am on the "Select the facilities management services that you need" page
    # When I click on open all
    # And I select all maintenance services
    # And I select all horticultural services
    # And I select all statutory services
    # And I select all catering services
    # And I select all cleaning services
    # And I select all workplace services
    # And I select all reception services
    # And I select all security services
    # And I select all waste services
    # And I select all miscellaneous services
    # And I select all cafm service
    # And I select all helpdesk services
    # Then the page should be accessible

  Scenario: FM - Start a new procurement page - Region 1
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on select all for North East England
    And I click on select all for North West England
    And I click on select all for Yorkshire and Humber
    And I click on select all for East Midlands
    And I click on select all for West Midlands
    And I click on select all for East England
    And I click on select all for London
    And I click on select all for South East England
    And I click on select all for South West England
    And I click on select all for Wales
    And I click on select all for Scotland
    And I click on select all for Northern Ireland
    Then the page should be accessible


  Scenario: FM - Start a new procurement page - Search Result
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - Search Result Saved
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue"
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - Detailed Search Summary
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - Contract Name page
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click on "Change"
    And I am on "Contract name" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - Estimated Annual Cost
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - TUPE
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer TUPE question
    And I am on "TUPE" page
    Then the page should be accessible


  Scenario: FM - Start a new procurement page - Contract Period
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer contract date question
    And I am on "Contract period" page
    Then the page should be accessible

  Scenario: FM - Buildings page
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    Then the page should be accessible

  Scenario: FM - Buildings page - More Buildings
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    And I click on "Add or change buildings"
    Then the page should be accessible

  Scenario: FM - Buildings page - More Buildings - Select Building
    Given I am a logged in user
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    And I select first building
    Then the page should be accessible

  Scenario: FM - Detailed Search - Select services
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I am on contract period page
    And I am enter values for initial call-off period
    And I select no option for tupe required
    And I select no option for optional call-off extension
    And I click on save and continue
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and continue"
    And I am on the "What facilities management services do you need for each building?" page
    Then the page should be accessible

  Scenario: FM - Detailed Search - Select services - Save and Continue
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I am on contract period page
    And I am enter values for initial call-off period
    And I select no option for tupe required
    And I select no option for optional call-off extension
    And I click on save and continue
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and continue"
    And I am on the "What facilities management services do you need for each building?" page
    And I click on "Save and return to detailed search summary"
    When I am on "Detailed search summary" page
    Then the page should be accessible

  Scenario: FM - Detailed Search - Service Information
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    When I click change on building name on detailed search summary
    And I am on service requirements page
    Then the page should be accessible

  Scenario: FM - Detailed Search - Results page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    Then the page should be accessible

  Scenario: FM - Detailed Search - Results 2
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I am on "Quick view results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    Then the page should be accessible

  Scenario: FM - Contract Value
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Professional snow & ice clearance "
    And I click on the "Management of billable works "
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I should see the "Estimated contract cost" page
    Then the page should be accessible





