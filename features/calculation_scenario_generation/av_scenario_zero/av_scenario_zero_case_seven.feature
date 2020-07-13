Feature: Assessed value Scenario one building

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Ventilation and air conditioning system maintenance "
    And I click on the "Lifts, hoists & conveyance systems maintenance "
    And I click on the "Portable appliance testing "
    And I click on the "Mobile cleaning "
    And I click on the "CAFM system"
    And I click on the "Helpdesk services"
    And I click on the "Management of billable works"
    And I click on "Close all"




  Scenario Outline: Scenario 7-  CP, CAFM, Helpdesk TUPE (Lot 1C)
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Close all"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I click on "Save and continue"
    And I am on "Detailed search summary" page
    And I click to answer estimated annual cost question
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 50000000
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
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 1300 for portable appliance testing
    And I enter 1300 for mobile cleaning service two
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I am on "Service requirement volumes" page
    And I enter 1300 for portable appliance testing
    And I enter 1300 for mobile cleaning service two
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Continue"
    And I should see the price displayed £60,861,180.60


    Examples:
      | years | day | month | year |
      |   3   | 12  | 10    | 2020 |
