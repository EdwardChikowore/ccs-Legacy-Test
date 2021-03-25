Feature:  Facilities Management - Detailed Search Summary - Question Links - Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
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
    And I should see text "73 regions selected" in the region selection basket
    And I click on "Close all"
    And I click on "Continue"
    And I am on "Quick view results" page    
    And I add contract name

  Scenario: FM - Requirements - Save your Search journey - Question link - Contract Name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Contract name"
    And I am on "Contract name" page
    And I change contract name
    And I click on "Save and return"
    And I am on "Requirements" page
    And The contract name should include "Change_contract_name_DS_"

  Scenario: FM - Requirements - Save your Search journey - Question link - Estimated Annual Cost - No selection error
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on "Save and return"
    Then I should see the following error messages
      |Select one option |
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 0
    And I click on "Save and return"
    Then I should see the following error messages
      |The estimated annual cost must be an amount of money, such as £12,000 or £1,200|

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - Yes - No input
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 99999999999
    And I click on "Save and return"
    Then I should see the following error messages
      |Estimated annual cost must be a number between 1 and 999,999,999|
    And I enter the cost 5000
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - Yes - exceeds maximum input
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I click on "Save and return"
    Then I should see the following error messages
      |The estimated annual cost must be an amount of money, such as £12,000 or £1,200|
    And I enter the cost 999999999
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - error message
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return"
    And I am on "Requirements" page


  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - Yes
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - Error message
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    Then I am on "TUPE" page
    When I click on "Save and return"
    Then I should see the following error messages
      |Select one option|
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - No
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario Outline: Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Contract period
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2020"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I am on "Requirements" page

  Scenario Outline: Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Contract period - Change button
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2020"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Contract period"
    And I am on "Contract period summary" page
    And I click on "Change"
    And I am on "Contract period" page
    And I enter "4" years and "0" months for the contract period
    And I enter the day as "3"
    And I enter the month as "9"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Select buildings
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Buildings"
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on the first building
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Save and return"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building
    And I click on "Answer question"
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save for later journey - Questions
    When I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page