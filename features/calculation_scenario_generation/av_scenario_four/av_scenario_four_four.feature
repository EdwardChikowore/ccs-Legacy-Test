Feature: Assessed value Scenario Four Case four

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"

  Scenario Outline: Scenario 4-  CAFM, Helpdesk TUPE, No CP
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Locksmith services|
      |Routine cleaning  |
      |Reception service |
      |General waste     |
      |CAFM system       |
      |Helpdesk services |
    And I navigate to buildings page
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, M18 7GQ"
    And I navigate to buildings and services summary page
    And I click on "Outside London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 45 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 45 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    Then I should see the price displayed £530,217.00

    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2023 |
