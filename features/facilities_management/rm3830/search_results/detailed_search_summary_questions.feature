Feature:  Facilities Management - Detailed Search Summary - Question Links - Content

  Background:
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I click on "Continue"
    And I click on open all
    And I click on select all for "North East England"
    And I click on select all for "North West England"
    And I click on select all for "Yorkshire and Humber"
    And I click on select all for "East Midlands"
    And I click on select all for "West Midlands"
    And I click on select all for "East England"
    And I click on select all for "London"
    And I click on select all for "South East England"
    And I click on select all for "South West England"
    And I click on select all for "Wales"
    And I click on select all for "Scotland"
    And I click on select all for "Northern Ireland"
    And I should see text "73 regions selected" in the selection basket
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
    And the contract name should include "Change_contract_name_DS_"

  Scenario: FM - Requirements - Save your Search journey - Question link - Estimated Annual Cost - No selection error
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on "Save and return"
    Then I should see the following error messages:
      | Select one option |
    And I select "Yes" for estimated annual cost known
    And I enter "0" for estimated annual cost
    And I click on "Save and return"
    Then I should see the following error messages:
      | The estimated annual cost must be an amount of money, such as £12,000 or £1,200 |

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - Yes - No input
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "Yes" for estimated annual cost known
    And I enter "99999999999" for estimated annual cost
    And I click on "Save and return"
    Then I should see the following error messages:
      | Estimated annual cost must be a number between 1 and 999,999,999  |
    And I enter "5000" for estimated annual cost
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - Yes - exceeds maximum input
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "Yes" for estimated annual cost known
    And I click on "Save and return"
    Then I should see the following error messages:
      | The estimated annual cost must be an amount of money, such as £12,000 or £1,200 |
    And I enter "999999999" for estimated annual cost
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost - error message
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "Yes" for estimated annual cost known
    And I enter "500000" for estimated annual cost
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Estimated Annual Cost
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "Yes" for estimated annual cost known
    And I enter "500000" for estimated annual cost
    And I click on "Save and return"
    And I am on "Requirements" page


  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - Yes
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - Error message
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    Then I am on "TUPE" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | Select one option |
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - TUPE - No
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "No" for TUPE required
    And I click on "Save and return"
    And I am on "Requirements" page

  Scenario Outline: Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Contract period
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
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
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Contract period"
    And I am on "Contract period summary" page
    And I click on "Change"
    And I am on "Contract period" page
    And I enter "4" years and "0" months for the contract period
    And I enter an inital call-off period start date 2 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save your Search journey - Question link - Select buildings
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Buildings"
    And I am on "Buildings" page
    And I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on the first building
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Save and return"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building
    And I click on "Answer question"
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page

  Scenario: FM - Detailed Search Summary - Save for later journey - Questions
    When I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page