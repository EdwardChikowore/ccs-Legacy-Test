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
    When I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    Then the page should be accessible

# Timeout
#  Scenario: FM - Manage procurements page
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Procurements dashboard" page

# Timeout
#  Scenario: FM - Manage buildings page
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page

## FM-1046
#  Scenario: FM - Manage buildings - Select Building - Detailed building summary
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Auto Test 1"

# Minor defect
#  Scenario: FM - Manage buildings - Add a building - Step 1
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Add a building"
#    And user clicks "Save and continue"

# obsolete
#  Scenario: FM - Manage buildings - Create Building - Continue
#    Given the user is on the "FM Home" page
#    When user clicks "Start now"
#    When user clicks "Sign in with Cognito"
#    When user is on "Procurements" page
#    Then user is on "Manage buildings" page
#    And user clicks "Create Single Building"
#    And user is on "Create Single Building" page

# Minor
  Scenario: FM - Manage buildings - Add Building - Add address page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Manage buildings"
    When I click on "Add a building"
    And I am on the "Add a building" page
    Then The page should be accessible


#  Scenario: FM - Start a new procurement page - Open Services - Maintenance
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Maintenance services"
    And I select all maintenance services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Horticultural
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Horticultural services"
    When I select all horticultural services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Statutory Obligations
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Statutory obligations"
    When I select all statutory services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Catering Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Catering services"
    When I select all catering services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Cleaning Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Cleaning services"
    When I select all cleaning services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Workplace FM Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Workplace FM services"
    When I select all workplace services
    Then The page should be accessible
#
  Scenario: FM - Start a new procurement page - Open Services - Reception Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Reception services"
    When I select all reception services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Security Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Security services"
    When I select all security services services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Waste Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Waste services"
    When I select all waste services services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Miscellaneous FM Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Miscellaneous FM services"
    When I select all miscellaneous services services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Computer-aided facilities management (CAFM)
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Computer-aided facilities management (CAFM)"
    When I select all cafm service services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Helpdesk Services
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page
    When I click on "Helpdesk services"
    When I select all helpdesk services
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 1
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on close all on regions page
    And I click on "North East (England)"
    And I click on select all for North East England
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 2
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on close all on regions page
    And I click on "North West (England)"
    And I click on select all for North West England
    Then The page should be accessible


  Scenario: FM - Start a new procurement page - Region 3
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "Yorkshire and The Humber"
    And I click on select all for Yorkshire and Humber
    Then The page should be accessible


  Scenario: FM - Start a new procurement page - Region 4
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "East Midlands (England)"
    And I click on select all for East Midlands
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 5
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "West Midlands (England)"
    And I click on select all for West Midlands
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 6
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "East of England"
    And I click on select all for East England
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 7
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "London"
    And I click on select all for London
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 8
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "South East (England)"
    And I click on select all for South East England
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 9
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "South West (England)"
    And I click on select all for South West England
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 10
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "Wales"
    And I click on select all for Wales
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 11
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "Scotland"
    And I click on select all for Scotland
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Region 12
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "Northern Ireland"
    And I click on select all for Northern Ireland
    Then The page should be accessible


  Scenario: FM - Start a new procurement page - Search Result
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    Then The page should be accessible
    And I add contract name

#  Scenario: FM - Start a new procurement page - Search Result Saved
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Detailed Search Summary
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Contract Name page
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click on "Change"
    And I am on "Contract name" page
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - Estimated Annual Cost
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    Then The page should be accessible

  Scenario: FM - Start a new procurement page - TUPE
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer TUPE question
    And I am on "TUPE" page
    Then The page should be accessible


  Scenario: FM - Start a new procurement page - Contract Period
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer contract date question
    And I am on "Contract period" page
    Then The page should be accessible

  Scenario: FM - Buildings page
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    Then The page should be accessible

  Scenario: FM - Buildings page - More Buildings
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    And I click on "Add more buildings"
    Then The page should be accessible

  Scenario: FM - Buildings page - More Buildings - Select Building
    Given I am a logged in user
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on "Maintenance services"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I should see my selection in the region basket
    And I click on "Continue"
    And I am on "Results" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer building question
    And I am on "Buildings" page
    And I select first building
    Then The page should be accessible

  Scenario: FM - Detailed Search - Select services
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and continue"
    And I am on the "What facilities management services do you need for each building?" page
    Then The page should be accessible

  Scenario: FM - Detailed Search - Select services - Save and Continue
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and continue"
    And I am on the "What facilities management services do you need for each building?" page
    And I click on "Save and continue"
    Then The page should be accessible

  Scenario: FM - Detailed Search - Service Information
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    When I click change on building name on detailed search summary
    And I am on service requirements page
    Then The page should be accessible

  Scenario: FM - Detailed Search - Results page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I am on the "results" page
    Then The page should be accessible

  Scenario: FM - Detailed Search - Results 2
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I am on the "results" page
    And I click on the Direct award route to market
    And I click on "Continue"
    Then The page should be accessible

  Scenario: FM - Contract Value
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Professional snow & ice clearance "
    And I click on the "Management of billable works "
    And I click on "Close all"
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Close all"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and continue"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and continue"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I am on "Buildings" page
#    And I select seventh building "London building" with address "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then The page should be accessible





