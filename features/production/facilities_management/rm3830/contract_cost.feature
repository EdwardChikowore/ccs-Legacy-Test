@prod_test
Feature: Contract cost calculation with a range of services

  Scenario: Enter requirements and get the contract cost
    Given I create a new procurement
    And I click on "Services"
    And I am on "Services" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I check "Lifts, hoists & conveyance systems maintenance "
    And I check "Cleaning of external areas"
    And I check "Routine cleaning"
    And I check "Handyman services"
    And I check "Portable appliance"
    And I check "General waste"
    And I check "Classified waste"
    And I check "Feminine hygiene waste"
    And I check "CAFM system"
    And I check "Helpdesk services"
    And I check "Management of billable works"
    When I click on "Save and continue"
    And I click on "Return to requirements"
    Then I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "1" years and "7" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select "Contract_cost_building"
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on "Contract_cost_building"
    And I check "Select all"
    And I click on "Save and return"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on "Contract_cost_building"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 50 for number of lift floors
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Portable appliance testing" page
    And I enter "90" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Routine cleaning" page
    And I enter "40" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Handyman services" page
    And I enter 1500 for service hours
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "General waste" page
    And I enter "20" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Classified waste" page
    And I enter "30" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Feminine hygiene waste" page
    And I enter "40" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Routine cleaning" page
    And I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on the service question
    Then I am on the "Cleaning of external areas" page
    And I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    Then I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Results" page
    Then I should see the price displayed "£75,071.58"
