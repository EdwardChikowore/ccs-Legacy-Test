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

  Scenario: FM - Your account page
    Given I am a logged in user
    When I am on your account page
    Then the page should be accessible

  Scenario: FM - Manage your details
    Given I am a logged in user
    When I click on "Manage my details"
    And I am on "Manage your details" page
    Then the page should be accessible

  Scenario: FM - Procurement dashboard
    Given I am a logged in user
    When I click on "Continue a procurement"
    And I am on "Procurements dashboard" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Buildings page
    Given I am a logged in user
    When I click on manage my buildings link
    And I am on "Buildings" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Add Building
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Add Building - Add address page
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | ST161AA  |
    And I click on "Find address"
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Internal and external areas
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Building type
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Security clearance
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    And I select the first building type
    And I click on "Save and continue"
    Then I am on "Security clearance" page
    Then the page should be accessible

  Scenario: FM - Manage buildings - Building summary
    Given I am a logged in user
    When I click on manage my buildings link
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      |Add a description (optional)        | Nursery  |
      | Postcode                           | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - What next page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    Then the page should be accessible

  Scenario: FM - Start a new procurement page - Open Services - Maintenance
     Given I am a logged in user
     When I click on "Quick view suppliers"
     And I am on the "Select the facilities management services that you need" page
     When I click on open all
     And I select all maintenance services
     And I select all horticultural services
     And I select all statutory services
     And I select all catering services
     And I select all cleaning services
     And I select all workplace services
     And I select all reception services
     And I select all security services
     And I select all waste services
     And I select all miscellaneous services
     And I select all cafm service
     And I select all helpdesk services
     Then the page should be accessible

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

  Scenario: FM - Start a new procurement page - What next page
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
    And I am on "What happens next" page
    Then the page should be accessible

  Scenario: FM - Requirements page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    Then the page should be accessible

  Scenario: FM - Requirements page - estimated contract cost
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    Then the page should be accessible

  Scenario: FM - Requirements page - TUPE
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    Then the page should be accessible

  Scenario: FM - Requirements page - Contract period
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    Then the page should be accessible

  Scenario: FM - Requirements page - Contract period summary
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "3"
    And I enter the month as "12"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then the page should be accessible

  Scenario: FM - Requirements - Services
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
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Services"
    And I am on "Services summary" page
    Then the page should be accessible

  Scenario: FM - Requirements - Services
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
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Buildings"
    And I am on "Buildings" page
    Then the page should be accessible

  Scenario: FM - Requirements - Buildings
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
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Buildings"
    And I am on "Buildings" page
    Then the page should be accessible

  Scenario: FM - Requirements - Assigning services to buildings
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    Then the page should be accessible

  Scenario: FM - Requirements - Service requirements
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    Then the page should be accessible


  Scenario: FM - Requirements - Service requirements - Building standards
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Mechanical and electrical engineering maintenance" page
    Then the page should be accessible

  Scenario: FM - Requirements - Service requirements - service volumes
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mobile cleaning"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Mobile cleaning services" page
    Then the page should be accessible

  Scenario: FM - Requirements - Service requirements - Lift
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Lifts, hoists & conveyance systems maintenance "
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    Then the page should be accessible

  Scenario: FM - Requirements - Service requirements - Service Hours
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Taxi booking service"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Taxi booking service" page
    Then the page should be accessible
#
#  Scenario: Bulk Upload - Upload in progress
#    When I create a new procurement
#    And I click on "Click here to download an Excel template"
#    Then the page should be accessible
#
#    And I click on "Continue to upload your file"
#    And I am on "Upload your spreadsheet" page
#    And I upload the "complete" file
#    And I click on "Upload my services and buildings"
#    Then I am on "File upload status" page
#    And my upload status is "UPLOAD IN PROGRESS"
#
#  Scenario: Bulk Upload - Upload successful
#    And I upload the "complete" file
#    And I click on "Upload my services and buildings"
#    Then I am on "File upload status" page
#    And my upload status is "UPLOAD IN PROGRESS"
#    And I wait for the upload to finish
#    Then my upload status is "UPLOAD COMPLETED"
#
#  Scenario: Bulk Upload - Upload successful - view price
#    And I upload the "complete" file
#    And I click on "Upload my services and buildings"
#    Then I am on "File upload status" page
#    And my upload status is "UPLOAD IN PROGRESS"
#    And I wait for the upload to finish
#    Then my upload status is "UPLOAD COMPLETED"
#    And I click on "Continue to procurement"
#    And I am on "Requirements" page
#    Then I answer contract details question
#    And I answer contract period question
#    Then I click on "Continue to results"
#    Then I should see the price displayed £149,322.21
#
#  Scenario: Bulk Upload - Upload successful - send to supplier
#    And I upload the "complete" file
#    And I click on "Upload my services and buildings"
#    Then I am on "File upload status" page
#    And my upload status is "UPLOAD IN PROGRESS"
#    And I wait for the upload to finish
#    Then my upload status is "UPLOAD COMPLETED"
#
#  Scenario: Bulk Upload - Upload successful - requires building region
#    And I upload the "missing regions" file
#    And I click on "Upload my services and buildings"
#    Then I am on "File upload status" page
#    And my upload status is "UPLOAD IN PROGRESS"
#    And I wait for the upload to finish
#    Then my upload status is "UPLOAD COMPLETED"
#    And I click on "Continue to procurement"
#    Then I am on "Review your buildings" page
#    And there are buildings with missing regions

  Scenario: FM - Results
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I am on "Results" page
    Then the page should be accessible

  Scenario: FM - Choose contract value
    Given I am a logged in user - buildings account
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select services with no service questions
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Continue to results"
    Then I am on "Estimated contract cost" page
    Then the page should be accessible

  Scenario: FM - Further competition
    Given I am a logged in user - buildings account
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select services with no service questions
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Continue to results"
    Then I am on "Estimated contract cost" page
    Then I am on "Estimated contract cost" page
    And I click on lot 1a
    And I click on "Continue"
    Then I am on "Results" page
    And I click on "Continue"
    Then I am on "Further competition" page
    And I click on "Save as further competition"
    And I am on the "Download your procurement summary" page
    Then the page should be accessible

  Scenario: FM - Direct Award - Direct award pricing page
      Given I am a logged in user
      Then I should see the navigation panel has sign out link
      When I click on "Quick view suppliers"
      And I am on the "Select the facilities management services that you need" page
      And I click on open all
      And I click on the "Mechanical and electrical engineering maintenance"
      And I click on "Close all"
      And I am on requirements page
      Then I answer contract details question
      And I answer contract period question
      And I select building
      And I assign services to buildings
      And I complete service requirements questions
      And I navigate to results page
      And I proceed to the contract details page
      And I am on "Contract details" page
      And I click on the seventh question for "Governing law"
      And I am on "Governing law" page
      Then the page should be accessible
