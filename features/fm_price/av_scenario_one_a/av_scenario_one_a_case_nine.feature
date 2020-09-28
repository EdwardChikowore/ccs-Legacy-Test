Feature: Assessed Value - Scenario 1a - One service has no framework rate

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"

  Scenario Outline: Scenario 9 -  Includes Customer Price, No CAFM, Helpdesk, TUPE  Variance is within of 30% (Positive left boundary) - LOT 1B
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 5500000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Handyman services                                  |
    And I navigate to buildings page
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, M18 7GQ"
    And I navigate to Assigning services to buildings summary page
    And I click on "Outside London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 18000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 1300 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    And I should see the price displayed £16,582,767.69

    Examples:
      | years | day | month | year |
      |   5   | 12  | 10    | 2023 |
