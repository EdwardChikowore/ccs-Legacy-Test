Feature: Assessed Value - Scenario 1b - One service has no benchmark and framework rate

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
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option

  Scenario Outline: Includes Customer price, Variance is within 30%
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      | Mechanical and electrical engineering maintenance |
      | Professional snow & ice clearance                 |
      | Routine cleaning                                  |
      | Reception service                                 |
      | General waste                                     |
      | <additional_service>                              |
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
    And I enter 34 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 6240 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 130 for general waste
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
      | boundary                | estimated_cost  | additional_service  | price         |
      | Negative Left boundary  | 1572700         |                     | £1,258,382.29 |
      | Negative Right boundary | 1573500         |                     | £1,573,500.00 |
      | Positive Left boundary  | 852800          |                     | £1,018,415.62 |
      | Negative Left boundary  | 843700          | Locksmith services  | £843,700.00   |

  Scenario Outline: Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30%
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
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
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM system                                        |
      |Helpdesk services                                  |
      |Management of billable works                       |
      |<additional_service>                               |
    And I navigate to buildings page
    And I find and select "London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 34 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 6240 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 130 for general waste
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
      | boundary                | estimated_cost  | additional_service  | price         |
      | Negative Left boundary  | 2138000         |                     | £1,710,780.37 |
      | Negative Right boundary | 2139000         |                     | £2,139,000.00 |
      | Negative Right boundary | 1151900         |                     | £1,382,080.37 |
      | Positive Left boundary  | 1150900         | Locksmith services  | £1,150,900.00 |

  Scenario Outline: Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% - LOT 1B
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM system                                        |
      |Helpdesk services                                  |
      |Management of billable works                       |
    And I navigate to buildings page
    And I find and select "London building"
    And I navigate to Assigning services to buildings summary page
    And I click on "London building"
    And I select all services for first building
    And I navigate to Service requirements summary page
    And I click on "London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 3400 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 6240 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 13000 for general waste
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
      | boundary                | estimated_cost  | price           |
      | Negative Left boundary  | 9172000         | £14,681,047.13  |
      | Negative Right boundary | 9180500         | £18,361,000.00  |
      | Positive Left boundary  | 4943000         | £11,861,713.80  |
      | Positive Right boundary | 4941900         | £9,883,800.00   |

  Scenario Outline: Includes CP, CAFM, Helpdesk TUPE, London Building Variance is within 30% - LOT 1C
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "7"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Professional snow & ice clearance                  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM system                                        |
      |Helpdesk services                                  |
      |<additional_service>                               |
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
    And I enter 3400 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 6240 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 13000 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
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
    And I enter 3400 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 6240 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 13000 for general waste
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
      | boundary                | estimated_cost  | additional_service            | price           |
      | Negative Left boundary  | 16700000        | Management of billable works  | £93,658,662.10  |
      | Negative Right boundary | 16790000        | Management of billable works  | £117,530,000.00 |
      | Positive Left boundary  | 9070000         |                               | £75,855,328.76  |
      | Positive Right boundary | 9009000         | Management of billable works  | £63,063,000.00  |
