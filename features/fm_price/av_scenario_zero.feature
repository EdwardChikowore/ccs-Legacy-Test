Feature: Assessed value Scenario Zero - All services has Benchmark and framework rates

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

  Scenario: Customer Price added; No CAFM, Helpdesk and TUPE
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
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
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
    And for scenario 0, lot 1a I add the details for "Outside London building" building
    When I navigate to results page
    And I should see the price displayed £1,785,988.67

  Scenario: No Customer Price, CAFM, Helpdesk, TUPE
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
    And for scenario 0, lot 1a I add the details for "Outside London building" building
    When I navigate to results page
    Then I should see the price displayed £2,178,983.01

  Scenario: Includes Customer Price, CAFM, Helpdesk, TUPE, London building
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
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
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM system                                        |
      |Helpdesk services                                  |
    And for scenario 0, lot 1a I add the details for "London building" building
    When I navigate to results page
    Then I should see the price displayed £2,310,150.63

  Scenario: Includes CAFM, Helpdesk, TUPE, London building but no Customer Price
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
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
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
      |Routine cleaning                                   |
      |Reception service                                  |
      |General waste                                      |
      |CAFM                                               |
      |Helpdesk services                                  |
    And for scenario 0, lot 1a I add the details for "London building" building
    When I navigate to results page
    Then I should see the price displayed £2,965,225.94

  Scenario: Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1A)
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
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
    And I click on open all
    And I click on the following services:
      |Ventilation and air conditioning system maintenance |
      |Lifts, hoists & conveyance systems maintenance      |
      |Portable appliance testing                          |
      |Mobile cleaning                                     |
      |CAFM system                                         |
      |Helpdesk services                                   |
      |Management of billable works                        |
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
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 300 for number of lift floors
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 130 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 130 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 300 for number of lift floors
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 130 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 130 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    When I navigate to results page
    Then I should see the price displayed £5,177,342.84

  Scenario: Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1B)
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
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
    And I click on open all
    And I click on the following services:
      |Ventilation and air conditioning system maintenance |
      |Lifts, hoists & conveyance systems maintenance      |
      |Portable appliance testing                          |
      |Mobile cleaning                                     |
      |CAFM system                                         |
      |Helpdesk services                                   |
      |Management of billable works                        |
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
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    When I navigate to results page
    And I should see the price displayed £7,609,449.63

  Scenario: Includes Customer Input, CAFM, Helpdesk, TUPE - Two Buildings (Lot 1C)
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 50000000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter the number of year as "3"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    Then I navigate to services page
    And I click on open all
    And I click on the following services:
      |Ventilation and air conditioning system maintenance |
      |Lifts, hoists & conveyance systems maintenance      |
      |Portable appliance testing                          |
      |Mobile cleaning                                     |
      |CAFM system                                         |
      |Helpdesk services                                   |
      |Management of billable works                        |
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
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Outside London building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 600 for lift one
    And I enter 600 for lift two
    And I enter 600 for lift three
    And I enter 600 for lift four
    And I enter 600 for lift five
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 1300 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 1300 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    When I navigate to results page
    Then I should see the price displayed £60,861,180.60

  Scenario: Customer Price added; No CAFM, Helpdesk and TUPE - Standard B
    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
    And I enter the cost 500000
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
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
    And I click on open all
    And I click on the following services:
      |Mechanical and electrical engineering maintenance  |
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
    And I select standard B
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard B
    When I navigate to results page
    And I should see the price displayed £1,242,538.13
