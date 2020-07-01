Feature: Assessed Value - Scenario 1b - One service has no benchmark and framework rate

  Background:
    Given I am a logged in user
    When I click on "Procurements dashboard"
    And I am on the "Procurements dashboard"

  Scenario: 1- Includes Customer price, Variance is within of 30% (Negative left boundary)
    When I click on "av_scenario_one_b_case_one"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,572,700"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
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
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,258,382.29


  Scenario: 2- Includes Customer price, Variance is within of 30% (Negative right boundary)
    When I click on "av_scenario_one_b_case_two"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,573,500"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,573,500.00

  Scenario: 3- Includes Customer price, Variance is within of 30% (Positive left boundary)
    When I click on "av_scenario_one_b_case_three"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£852,800"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,018,415.62

  Scenario: 4 - Includes Customer price, Variance is within of 30% (Negative left boundary)
    When I click on "av_scenario_one_b_case_four"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£843,700"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £843,700.00

  Scenario: 5-  Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Neg left boundary)
    When I click on "av_scenario_one_b_case_five"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£2,138,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Management of billable works|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,710,780.37

  Scenario: 6-  Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Neg right boundary)
    When I click on "av_scenario_one_b_case_six"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£2,139,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Management of billable works|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £2,139,000.00


  Scenario: 7-  Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive left boundary)
    When I click on "av_scenario_one_b_case_seven"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,151,900"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,382,080.37

  Scenario: 8-  Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive rght boundary)
    When I click on "av_scenario_one_b_case_eight"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,150,900"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,150,900.00

  Scenario: 9- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Negative left boundary) - LOT 1B
    When I click on "av_scenario_one_b_case_nine"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£9,172,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £14,681,047.13

  Scenario: 10- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Negative right boundary) - LOT 1B
    When I click on "av_scenario_one_b_case_ten"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£9,180,500"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £18,361,000.00

  Scenario: 11- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive left boundary) - LOT 1B
    When I click on "av_scenario_one_b_case_eleven"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£4,943,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £11,861,713.80

  Scenario: 12- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive right boundary) - LOT 1B
    When I click on "av_scenario_one_b_case_twelve"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£4,941,900"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £9,883,800.00

  Scenario: 13- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Negative left boundary) - LOT 1C
    When I click on "av_scenario_one_b_case_thirteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£16,700,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £93,658,662.10

  Scenario: 14- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Negative right boundary) - LOT 1C
    When I click on "av_scenario_one_b_case_fourteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£16,790,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £117,530,000.00

  Scenario: 15- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive left boundary) - LOT 1C
    When I click on "av_scenario_one_b_case_fifteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£9,070,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £75,855,328.76


  Scenario: 16- Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% (Positive right boundary) - LOT 1C
    When I click on "av_scenario_one_b_case_sixteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£9,009,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Professional snow & ice clearance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 3400
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £63,063,000.00