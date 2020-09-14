Feature: Assessed value Scenario Three - No Customer Price and at least 1 Service (but not all services) missing FW & BM price

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"

  Scenario Outline: 6 - Includes TUPE, CAFM, Helpdesk and London Building - LOT 1C
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
      |Mechanical and electrical engineering maintenance  |
      |Ventilation and air conditioning system maintenance|
      |Professional snow & ice clearance                  |
      |Mobile cleaning                                    |
      |Environmental cleaning service                     |
      |General waste                                      |
      |Recycled waste                                     |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And I navigate to buildings page
    And I select seventh building "London building" with address "2 Marylebone Road, London, NW1 4DF"
    And I navigate to buildings and services summary page
    And I click on "London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 10000 for mobile cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 30000 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter 30000 for recycled waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I should see the "Estimated contract cost" page
    And I should see the partial price value £157,729,040
    And unpriced service "Professional snow & ice clearance" should be displayed

    Examples:
      | years | day | month | year |
      |   7   | 12  | 10    | 2023 |
