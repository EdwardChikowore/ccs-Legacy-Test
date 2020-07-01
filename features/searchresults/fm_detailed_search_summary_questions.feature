Feature:  Facilities Management - Detailed Search Summary - Question Links - Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
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
    And I should see text "73 Regions selected"
    And I click on "Close all"
    And I click on "Continue"
    And I am on "Results" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Contract Name
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click on "Change"
    And I am on "Contract name" page
    And I change contract name
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page
    And I contract name should include "Change_contract_name_DS_"

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page
    And The estimated annual cost value is "£500,000"

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - No
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click to answer TUPE question
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page
    And Tupe is set to "Yes"

  Scenario Outline: Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Contract period
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer contract date question
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page

    Examples:
      | years | day | month | year |
      |   2   | 12  | 10    | 2020 |


  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Select buildings
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click to answer building question
    And I am on "Buildings" page
    And I select first building
    And I click on "Save and return to detailed search"
    And I am on "Detailed search summary" page
    And I click to answer services question
    And I am on the "What facilities management services do you need for each building?" page
    And I click on "Save and return to detailed search summary"
    And I am on "Detailed search summary" page


  Scenario: FM - Detailed Search Summary - Save for later journey - Questions
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I click on "Return to procurements dashboard"
    And I am on "Procurements dashboard" page