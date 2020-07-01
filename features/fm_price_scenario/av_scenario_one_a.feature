Feature: Assessed Value - Scenario 1a - One service has no framework rate

  Background:
    Given I am a logged in user
    When I click on "Procurements dashboard"
    And I am on the "Procurements dashboard"

  Scenario: Scenario 1- Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30% (Neg Left boundary)
    When I click on "av_scenario_one_a_case_one"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,427,000"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
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
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,215,609.90


  Scenario: Scenario 2- Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30% (Neg Right boundary)
    When I click on "av_scenario_one_a_case_two"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,410,200"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,096,792.41


  Scenario: Scenario 3- Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30% (Positive Left boundary)
    When I click on "av_scenario_one_a_case_three"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£3,320,650"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,846,826.57

  Scenario: Scenario 4- Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30% (Positive Right boundary)
    When I click on "av_scenario_one_a_case_four"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£3,320,900"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £2,052,142.41

  Scenario: 5 - Includes Customer Price, CAFM, Helpdesk, TUPE, London Building, Variance is within of 30% (Neg Left boundary)
    When I click on "av_scenario_one_a_case_five"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,935,410"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,651,140.96


  Scenario: 6 - Includes Customer Price, CAFM, Helpdesk, TUPE, London Building, Variance is within of 30% (Neg Right boundary)
    When I click on "av_scenario_one_a_case_six"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£1,931,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,498,903.19


  Scenario: 7 - Includes Customer Price, CAFM, Helpdesk, TUPE, London Building, Variance is within of 30% (Positive left boundary)
    And I click on "av_scenario_one_a_case_seven"
    And I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£4,502,600"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    And I click on "London building"
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
    Then I should see the price displayed £2,506,870.96


  Scenario: 8 - Includes Customer Price, CAFM, Helpdesk, TUPE, London Building, Variance is within of 30% (Positive right boundary)
    When I click on "av_scenario_one_a_case_eight"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£4,511,600"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system  |
      |Helpdesk services |
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 34
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "6240.00 Service times"
    And The fourth volume for scenario zero "4. General waste" is 130
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £2,789,203.19


  Scenario: 9 -  Includes Customer Price, No CAFM, Helpdesk, TUPE  Variance is within of 30% (Positive left boundary) - LOT 1B
    When I click on "av_scenario_one_a_case_nine"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£5,500,000"
    And Tupe is set to "No"
    And The initial call-off period is "5 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 18000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 1300
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £16,582,767.69


  Scenario: 10 - Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30% (Positive right boundary) - LOT 1B
    When I click on "av_scenario_one_a_case_ten"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£5,520,000"
    And Tupe is set to "No"
    And The initial call-off period is "5 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 18000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 1300
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £18,469,131.94

  Scenario: 11 - Includes Customer Price , CAFM, Helpdesk, TUPE, London building,  Variance is within of 30% (Negative right boundary) - LOT 1B
    And I click on "av_scenario_one_a_case_eleven"
    And I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£2,850,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "5 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    And I click on "London building"
    And I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 18000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 1300
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £14,853,807.63

  Scenario: 12 - Includes Customer Price , CAFM, Helpdesk, TUPE, London building,  Variance is within of 30% (Negative left boundary) - LOT 1B
    When I click on "av_scenario_one_a_case_twelve"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£2,840,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "5 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 18000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 1300
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £13,487,483.42

  Scenario: 13 - Includes Customer Price, Variance is within of 30% (Positive left boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_thirteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£15,700,000"
    And Tupe is set to "No"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £72,036,418.35

  Scenario: 14 - Includes Customer Price, Variance is within of 30% (Positive right boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_fourteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£15,790,000"
    And Tupe is set to "No"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £80,330,955.59


  Scenario: 15 - Includes Customer Price, CAFM, Helpdesk, London Building, Variance is within of 30% (Negative right boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_fifteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£6,980,000"
    And Tupe is set to "No"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £60,216,642.77


  Scenario: 16 - Includes Customer Price, CAFM, TUPE, Helpdesk, London Building, Variance is within of 30% (Negative left boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_sixteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£6,939,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £58,589,100.54



  Scenario: 17 - Includes Customer Price, CAFM, TUPE, Helpdesk, London Building, Variance is within of 30% (Negative right boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_seventeen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£12,800,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £118,745,108.25


  Scenario: 18 - Includes Customer Price, CAFM, TUPE, Helpdesk, London Building, Variance is within of 30% (Negative left boundary) - LOT 1C
    When I click on "av_scenario_one_a_case_eighteen"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£39,000,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Handyman services|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 88000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Handyman services" is "8736.00 Service times"
    And The fourth volume for scenario zero "4. Reception service" is 8736.00 Service times
    And The fifth volume for scenario zero "5. General waste" is 13000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £179,878,441.58

