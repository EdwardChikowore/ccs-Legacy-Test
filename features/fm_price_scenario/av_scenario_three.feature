Feature: Assessed value Scenario Three - No Customer Price and at least 1 Service (but not all services) missing FW & BM price

  Background: Login page
    Given I am a logged in user
    When I click on "Procurements dashboard"
    And I am on the "Procurements dashboard"

  Scenario: 1-  No CP,CAFM, Helpdesk TUPE - LOT 1A
    When I click on "av_scenario_three_case_one"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Management of billable works|
    And I click change on building section
    When I am on "Buildings" page
    Then The twelfth building "Outside London building" address is "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
    And I click on "Outside London building"
    And I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £289,869
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: 2- Includes TUPE, CAFM, Helpdesk and London Building - LOT 1A
    When I click on "av_scenario_three_case_two"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £394,107
    And unpriced service "Professional snow & ice clearance" should be displayed


  Scenario: 3-No CP,CAFM, Helpdesk TUPE - LOT 1B
    When I click on "av_scenario_three_case_three"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Environmental cleaning service|
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Ventilation and air conditioning system maintenance|
      |Mobile cleaning services|
      |General waste|
      |Recycled waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario three "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario three "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario three "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for the number of building occupants for scenario three is 10000
    And The fourth volume for scenario three "4. Mobile cleaning services" is "Standard A"
    And The fifth volume for scenario three "5. General waste" is 30000
    And The sixth volume for scenario three "6. Recycled waste" is 30000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £16,978,383
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: 4-- Includes TUPE, CAFM, Helpdesk and London Building - LOT 1B
    When I click on "av_scenario_three_case_four"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Environmental cleaning service|
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Ventilation and air conditioning system maintenance|
      |Mobile cleaning services|
      |General waste|
      |Recycled waste|
      |Cafm system   |
      |Helpdesk services|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario three "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario three "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario three "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for the number of building occupants for scenario three is 10000
    And The fourth volume for scenario three "4. Mobile cleaning services" is "Standard A"
    And The fifth volume for scenario three "5. General waste" is 30000
    And The sixth volume for scenario three "6. Recycled waste" is 30000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £23,092,200
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: 5- No CP,CAFM, Helpdesk TUPE - LOT 1C
    When I click on "av_scenario_three_case_five"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Environmental cleaning service|
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Ventilation and air conditioning system maintenance|
      |Mobile cleaning services|
      |General waste|
      |Recycled waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario three "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario three "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario three "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for the number of building occupants for scenario three is 10000
    And The fourth volume for scenario three "4. Mobile cleaning services" is "Standard A"
    And The fifth volume for scenario three "5. General waste" is 30000
    And The sixth volume for scenario three "6. Recycled waste" is 30000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £115,692,494
    And unpriced service "Professional snow & ice clearance" should be displayed

  Scenario: 6- Includes TUPE, CAFM, Helpdesk and London Building - LOT 1C
    When I click on "av_scenario_three_case_six"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Environmental cleaning service|
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Ventilation and air conditioning system maintenance|
      |Mobile cleaning services|
      |General waste|
      |Recycled waste|
      |Cafm system   |
      |Helpdesk services|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario three "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario three "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario three "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for the number of building occupants for scenario three is 10000
    And The fourth volume for scenario three "4. Mobile cleaning services" is "Standard A"
    And The fifth volume for scenario three "5. General waste" is 30000
    And The sixth volume for scenario three "6. Recycled waste" is 30000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    And I should see the "Estimated contract cost" page
    Then I should see the partial price value £157,729,040
    And unpriced service "Professional snow & ice clearance" should be displayed

