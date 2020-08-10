Feature: Assessed value Scenario Three - Case Two

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Professional snow & ice clearance "
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on "Close all"


  Scenario Outline: 2-  No CP Lot 1A
    When I am on detailed search page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and continue"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and continue"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I am on "Buildings" page
    And I select seventh building "London building" with address "2 Marylebone Road, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search summary"
    And I click on "London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    When I am on "Procurement summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    And I should see the partial price value £394,107
    And unpriced service "Professional snow & ice clearance" should be displayed

    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2020 |
