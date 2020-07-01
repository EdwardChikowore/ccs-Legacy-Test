Feature: Assessed value Scenario Zero - All services has Benchmark and framework rates

  Background: Login page
    Given I am a logged in user
    When I click on "Procurements dashboard"
    And I am on the "Procurements dashboard"

  Scenario: Scanario 1 -  Customer Price added; No CAFM, Helpdesk and TUPE
    And I click on "av_scenario_zero_case_one"
    When I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£500,000"
    And Tupe is set to "No"
    And The initial call-off period is "2 years"
    And The following services are listed
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
    Then I should see the price displayed £1,785,988.67

  Scenario: Scenario 2 - No Customer Price, CAFM, Helpdesk, TUPE
    When I click on "av_scenario_zero_case_two"
    And I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
    And I click change on building section
    When I am on "Buildings" page
    Then The twelfth building "Outside London building" address is "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
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
    Then I should see the price displayed £2,178,983.01


  Scenario: Scenario 3- Includes Customer Price, CAFM, Helpdesk, TUPE, London building
    When I click on "av_scenario_zero_case_three"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£500,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    And I click change on building section
    When I am on "Buildings" page
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
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
    Then I should see the price displayed £2,310,150.63


  Scenario: Scenario 4- Includes CAFM, Helpdesk, TUPE, London building but no Customer Price
    When I click on "av_scenario_zero_case_four"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Mechanical and electrical engineering maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
    And I click change on building section
    When I am on "Buildings" page
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
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
    And I should see the price displayed £2,965,225.94


  Scenario: Scenario 5- Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1A)
    When I click on "av_scenario_zero_case_five"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£500,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Lifts, hoists & conveyance systems maintenance|
      |Ventilation and air conditioning system maintenance|
      |Portable appliance testing|
      |Mobile cleaning services|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    And I click change on building section
    When I am on "Buildings" page
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 300
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 130
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 130
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 300
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 130
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 130
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £5,177,342.84

  Scenario: Scenario 6- Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1B)
    When I click on "av_scenario_zero_case_six"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£500,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "2 years"
    And The following services are listed
      |Lifts, hoists & conveyance systems maintenance|
      |Ventilation and air conditioning system maintenance|
      |Portable appliance testing|
      |Mobile cleaning services|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    And I click change on building section
    When I am on "Buildings" page
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
    When I click on "London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 3000
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 1300
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 1300
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 3000
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 1300
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 1300
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £7,609,449.63


  Scenario: Scenario 7- Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1C)
    When I click on "av_scenario_zero_case_seven"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "£50,000,000"
    And Tupe is set to "Yes"
    And The initial call-off period is "3 years"
    And The following services are listed
      |Lifts, hoists & conveyance systems maintenance|
      |Ventilation and air conditioning system maintenance|
      |Portable appliance testing|
      |Mobile cleaning services|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    And I click change on building section
    When I am on "Buildings" page
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
    And I click on "London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 3000
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 1300
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 1300
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    And I click on "Outside London building"
    When I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for total of number of floors for scenario zero five is 3000
    And The first volume for scenario zero five "1. Lifts, hoists & conveyance systems maintenance" is "Standard A"
    And The second volume for scenario zero five "2. Ventilation and air conditioning system maintenance" is "Standard A"
    And The third volume for scenario zero five "3. Portable appliance testing" is 1300
    And The fourth volume for scenario zero five "4. Mobile cleaning services" is 1300
    And The fourth volume for the number of building occupants for scenario zero five "Standard A"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £60,861,180.60
