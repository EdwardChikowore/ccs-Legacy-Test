Feature: Assessed Value - Scenario 1a - One service has no framework rate

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

  Scenario Outline: Includes Customer Price, No CAFM, Helpdesk, TUPE, Variance is within of 30%
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
      | boundary                | estimated_cost  | price         |
      | Neg Left boundary       | 1427000         | £1,215,609.90 |
      | Neg Right boundary      | 1410200         | £1,096,792.41 |
      | Positive Left boundary  | 3320650         | £1,846,826.57 |
      | Positive Right boundary | 3320900         | £2,052,142.41 |

  Scenario Outline: Includes Customer Price, CAFM, Helpdesk, TUPE, London Building, Variance is within of 30%
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
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM                                               |
      |Helpdesk services                                  |
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
      | boundary                | estimated_cost  | price         |
      | Neg Left boundary       | 1935410         | £1,651,140.96 |
      | Neg Right boundary      | 1931000         | £1,498,903.19 |
      | Positive Left boundary  | 4502600         | £2,506,870.96 |
      | Positive Right boundary | 4511600         | £2,789,203.19 |

  Scenario Outline: Includes Customer Price, No CAFM, Helpdesk, TUPE  Variance is within of 30% - LOT 1B
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "5"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Handyman services                                  |
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
    And I enter 18000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 1300 for general waste
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
      | Neg Left boundary       | 5500000         | £16,582,767.69  |
      | Neg Right boundary      | 5520000         | £18,469,131.94  |

  Scenario Outline: Includes Customer Price , CAFM, Helpdesk, TUPE, London building, Variance is within of 30% - LOT 1B
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "5"
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
      |Handyman services                                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
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
    And I enter 18000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "General waste" page
    And I enter 1300 for general waste
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
      | boundary           | estimated_cost  | price           |
      | Neg Left boundary  | 2850000         | £14,853,807.63  |
      | Neg Right boundary | 2840000         | £13,487,483.42  |

  Scenario Outline: Includes Customer Price, Variance is within of 30% - LOT 1C
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "7"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Handyman services                                  |
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
    And I enter 88000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
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
      | Positive Left boundary  | 15700000        | £72,036,418.35  |
      | Positive Right boundary | 15790000        | £80,330,955.59  |

  Scenario: Includes Customer Price, CAFM, Helpdesk, London Building, Variance is within of 30% (Negative right boundary)
    And I enter the cost 6980000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "7"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Handyman services                                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
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
    And I enter 88000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
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
    And I should see the price displayed £60,216,642.77

  Scenario: Includes Customer Price, CAFM, TUPE, Helpdesk, London Building, Variance is within of 30% (Negative left boundary) - LOT 1C
    And I enter the cost 6939000
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
      |Locksmith services                                 |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |Handyman services                                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
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
    And I enter 88000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
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
    And I should see the price displayed £58,589,100.54

  Scenario Outline: Includes Customer Price, CAFM, TUPE, Helpdesk, London Building, Variance is within of 30% - LOT 1C
    And I enter the cost <estimated_cost>
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "<year>"
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
      |Handyman services                                  |
      |CAFM system                                        |
      |Helpdesk services                                  |
      |Management of billable works                       |
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
    And I enter 88000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
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
    And I enter 88000 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 8736 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 8736 for service hours
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
      | boundary                | estimated_cost  | year | price           |
      | Neg Left boundary       | 12800000        | 7    | £118,745,108.25 |
      | Neg Right boundary      | 39000000        | 1    | £28,978,438.80  |
