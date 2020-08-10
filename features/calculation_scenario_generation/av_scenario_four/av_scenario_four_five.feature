Feature: Assessed value Scenario Four Case five

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    Then I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Environmental cleaning service                     |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Recycled waste                                     |
      |CAFM system                                        |
      |Helpdesk services                                  |

  Scenario Outline: Scenario 5-  CAFM, TUPE, No CP
    When I am on detailed search page
    And I click on "Estimated annual cost"
    When I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and continue"
    When I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and continue"
    When I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    When I am on "Buildings" page
    And I select seventh building "London building" with address "2 Marylebone Road, London, Inner London - West, NW1 4DF"
    And I select twelfth building "Outside London building" with address "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search summary"
    And I click on "London building"
    When I am on "Service requirements" page
    And I click on "Answer question"
    When I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I select standard A for third service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    When I am on "Service requirement volumes" page
    And I enter 28000 for routine cleaning - AV scenario four
    And I enter 4000 for general waste - AV scenario four
    And I enter 4000 for recycled waste - AV scenario four
    And I click on "Save and return to service requirements"
    When I am on "Service requirements" page
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday
    And I select not required for Tuesday to Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I select standard A for first service
    And I select standard A for second service
    And I select standard A for third service
    And I click on "Save and return to service requirements"
    And I click on "Answer question"
    When I am on "Service requirement volumes" page
    And I enter 28000 for routine cleaning - AV scenario four
    And I enter 4000 for general waste - AV scenario four
    And I enter 4000 for recycled waste - AV scenario four
    And I click on "Save and return to service requirements"
    When I am on "Service requirements" page
    And I click on "Answer question"
    And I select standard A for first service
    And I click on "Save and return to service requirements"
    When I am on "Service requirements" page
    And I click on "Answer question"
    And I enter 1 for number of personnel
    And I select all day service for Monday
    And I select not required for Tuesday to Sunday
    And I click on "Save and return to service requirements"
    And I click on "Back to detailed search summary"
    When I am on "Procurement summary" page
    And I click on "Continue"
    Then I should see the price displayed £10,261,175.01
    And I should see "Further competition" as the only available route to market
#    And The direct award option should not be displayed
#    And I click on "Continue"
#    And I am on "Further competition" page



    Examples:
      | years | day | month | year |
      |   1   | 12  | 10    | 2020 |
