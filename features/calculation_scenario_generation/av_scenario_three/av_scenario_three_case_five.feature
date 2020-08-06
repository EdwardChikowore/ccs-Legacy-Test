Feature: Assessed value Scenario Three - Case Five

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Ventilation and air conditioning system maintenance "
    And I click on the "Professional snow & ice clearance "
    And I click on the "Mobile cleaning"
    And I click on the "Environmental cleaning service"
    And I click on the "General waste"
    And I click on the "Recycled waste"
    And I click on "Close all"


  Scenario Outline: 5-  No CP,CAFM, Helpdesk TUPE - Lot 1C
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Close all"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue to procurement"
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
#    And I select seventh building "London building" with address "2 Marylebone Road, London, Inner London - West, NW1 4DF"
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I select standard A for third service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 10000 for mobile cleaning services
    And I enter 30000 for general waste
    And I enter 30000 for recycled waste
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    And I should see the partial price value £115,692,494
    And unpriced service "Professional snow & ice clearance" should be displayed

    Examples:
      | years | day | month | year |
      |   7   | 12  | 10    | 2020 |
