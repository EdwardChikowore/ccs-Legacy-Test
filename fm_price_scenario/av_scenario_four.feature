Feature: Assessed value Scenario Four - No Customer Price and at least 1 Service missing only FW price.

  Background:
    Given I am a logged in user
    When I click on "Procurements dashboard"
    And I am on the "Procurements dashboard"

  Scenario: 1- No CP,CAFM, Helpdesk TUPE, Variance within 30% (Negative boundary)- LOT 1A
    When I click on "av_scenario_four_case_one"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Environmental cleaning service|
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Recycled waste|
    And I click change on building section
    When I am on "Buildings" page
    Then The twelfth building "Outside London building" address is "10 Kenton Avenue, Manchester, Greater Manchester, M18 7GQ"
    Then The seventh building "London building" address is "Consumers Association Ltd 2 Marylebone Road, London, London, Inner London - West, NW1 4DF"
    And I click on "Save and return to detailed search"
    When I am on "Detailed search summary" page
    And I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 28000
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "8736.00 Service times"
    And The fourth volume for scenario zero b "4. General waste" is 30
    And The fifth volume for scenario zero b "5. Environmental cleaning service" is Standard A
    And The sixth volume for scenario four b "6. Ventilation and air conditioning system maintenance" is "Standard A"
    And The seventh volume for scenario four b "7. Recycled waste" is 30
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £2,245,719.60

  Scenario: 2- No CP,CAFM, Helpdesk TUPE, Variance out of 30% (Negative boundary)- LOT 1A
    When I click on "av_scenario_four_case_two"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "No"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Environmental cleaning service|
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Recycled waste|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario zero "1. Mechanical and electrical engineering maintenance" is "Standard A"
    And The second volume for scenario zero "2. Routine cleaning" is 26500
    And The second volume for number of building occupants for scenario zero is "Standard A"
    And The third volume for scenario zero "3. Reception service" is "8736.00 Service times"
    And The fourth volume for scenario zero b "4. General waste" is 30
    And The fifth volume for scenario zero b "5. Environmental cleaning service" is Standard A
    And The sixth volume for scenario four b "6. Ventilation and air conditioning system maintenance" is "Standard A"
    And The seventh volume for scenario four b "7. Recycled waste" is 30
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £1,910,454.65

  Scenario: 3- Includes TUPE, CAFM, Helpdesk and London Building, Variance within 30% (Negative boundary) - LOT 1A
    When I click on "av_scenario_four_case_three"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario four "1. Routine cleaning" is "Standard A"
    And The first volume for number of building occupants for scenario four is 50
    And The second volume for scenario four "2. Reception service" is "1248.00 Service times"
    And The third volume for scenario four "3. General waste" is "50"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £532,021.69


  Scenario: 4 Includes TUPE, CAFM, Helpdesk and London Building, Variance out of 30% (Positive boundary) - LOT 1A
    When I click on "av_scenario_four_case_four"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Locksmith services|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario four "1. Routine cleaning" is "Standard A"
    And The first volume for number of building occupants for scenario four is 45
    And The second volume for scenario four "2. Reception service" is "1248.00 Service times"
    And The third volume for scenario four "3. General waste" is "45"
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £530,217.00


  Scenario: 5- Includes TUPE, CAFM, Helpdesk, Variance within 30% (Negative boundary) - LOT 1b
    And I click on "av_scenario_four_case_five"
    And I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "1 year"
    And The following services are listed
      |Environmental cleaning service|
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Recycled waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario four_b "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario four_b "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario four_b "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for scenario four_b "4. Routine cleaning" is "Standard A"
    And The fourth volume for the number of building occupants for scenario four_b is 28000
    And The fifth volume for scenario four_b "5. Reception service" is 1248.00 Service times
    And The sixth volume for scenario four_b "6. General waste" is 4000
    And The seventh volume for scenario four_b "7. Recycled waste" is 4000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £10,261,175.01


  Scenario: 6- Includes TUPE, CAFM, Helpdesk, Variance within 30% (Negative boundary) - LOT 1C
    When I click on "av_scenario_four_case_six"
    Then I am on "Detailed search summary" page - one
    And The estimated annual cost value is "None"
    And Tupe is set to "Yes"
    And The initial call-off period is "7 years"
    And The following services are listed
      |Environmental cleaning service|
      |Locksmith services|
      |Mechanical and electrical engineering maintenance|
      |Ventilation and air conditioning system maintenance|
      |Routine cleaning|
      |Reception service|
      |General waste|
      |Recycled waste|
      |Cafm system|
      |Helpdesk services|
      |Management of billable works|
    When I click on "Outside London building"
    Then I am on "Service requirements" page
    And The building gia is 63200
    And The first volume for scenario four_b "1. Environmental cleaning service" is "Standard A"
    And The second volume for scenario four_b "2. Mechanical and electrical engineering maintenance" is "Standard A"
    And The third volume for scenario four_b "3. Ventilation and air conditioning system maintenance" is "Standard A"
    And The fourth volume for scenario four_b "4. Routine cleaning" is "Standard A"
    And The fourth volume for the number of building occupants for scenario four_b is 3000
    And The fifth volume for scenario four_b "5. Reception service" is 8736.00 Service times
    And The sixth volume for scenario four_b "6. General waste" is 4000
    And The seventh volume for scenario four_b "7. Recycled waste" is 4000
    And I click on "Back to detailed search summary"
    When I am on "Detailed search summary" page
    And I click on "Continue"
    Then I should see the price displayed £58,608,378.67