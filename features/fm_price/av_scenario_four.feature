Feature: Assessed value Scenario Four - No Customer Price and at least 1 Service missing only FW price.

  Background: Log in and capture contract details
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on start a procurement
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page

  Scenario Outline: 1- No CP,CAFM, Helpdesk TUPE, Variance within/out of 30% (Negative boundary)- LOT 1A
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
    And I navigate to buildings page
    And I find and select "Outside London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "Outside London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter <routine_cleaning> for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter <reception_services> for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter <general_waste> for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    And I should see the price displayed <price>

    Examples:
      | routine_cleaning  | reception_services  | general_waste | price         |
      | 34                | 6240                | 130           | £783,384.81   |
      | 10400             | 6240                | 13000         | £5,021,853.62 |

  Scenario Outline: Includes TUPE, CAFM, Helpdesk and London Building, Variance within 30% (Negative/Positive boundary) - LOT 1A
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Locksmith services|
      |Routine cleaning  |
      |Reception service |
      |General waste     |
      |CAFM system       |
      |Helpdesk services |
      |Management of billable works|
    And I navigate to buildings page
    And I find and select "Outside London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "Outside London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter <routine_cleaning> for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter <reception_services> for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter <general_waste> for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    And I should see the price displayed <price>

    Examples:
      | routine_cleaning  | reception_services  | general_waste | price       |
      | 50                | 1248                | 50            | £532,021.69 |
      | 45                | 1248                | 45            | £530,217.00 |

  Scenario Outline: Includes TUPE, CAFM, Helpdesk, Variance within 30% (Negative boundary) - LOT 1b and 1c
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "<years>"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
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
    And I navigate to buildings page
    And I find and select "London building"
    And I find and select "Outside London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "London building"
    And I select all services for first building
    And I click on "Outside London building"
    And I select all services for second building
    And I navigate to Service requirements summary page
    And I click on "London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter <routine_cleaning> for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter <reception_services> for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter <general_waste> for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter <recycled_waste> for recycled waste
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
    And I am on the "Routine cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter <routine_cleaning> for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter <reception_services> for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter <general_waste> for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter <recycled_waste> for recycled waste
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
    And I am on the "Routine cleaning" page
    And I select standard A
    When I navigate to results page
    Then I should see the price displayed <price>
    And I should see "Further competition" as the only available route to market

    Examples:
      | years | year  | routine_cleaning  | reception_services  | general_waste | recycled_waste  | price           |
      | 1     | 2021  | 28000             | 1248                | 4000          | 4000            | £10,261,175.01  |
      | 7     | 2023  | 3000              | 8736                | 4000          | 4000            | £58,608,378.67  |

