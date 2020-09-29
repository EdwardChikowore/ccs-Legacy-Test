#Feature: Homepage
#
#  Background: Login page
#    Given I am a logged in user
#
#  Scenario Outline: FM start Page
#    Then I should see the navigation panel has sign out link
#    When I click on "Quick view suppliers"
#    And I am on the "Select the facilities management services that you need" page
#    And I click on "Maintenance services"
#    And I click on the "Mechanical and electrical engineering maintenance"
#    And I click on the "Ventilation and air conditioning system maintenance"
##    And I should see my selection in the basket
#    And I click on "Continue"
#    And I click on "North East (England)"
#    And I click on the "Tees Valley and Durham"
#    And I should see my selection in the region basket
#    And I click on "Continue"
##    And I click the change link
##    And I add a service
##    And I click continue
##    And I click continue
##    And I should see number of services selected
##    And I click the service list
##    And I click the service list should be visible
##    And I should see two services
##    And I should see the service listed
#    And I add contract name
#    And I click on "Save and continue"
#    And I click on "Save and continue"
#    And I am on "Detailed search summary" page
#    And I click to answer estimated annual cost question
#    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
#    And I click on the "facilities_management_procurement_estimated_cost_known_true" option
#    And I enter the cost 5000
#    And I click on "Save and continue"
#    And I am on "TUPE" page
#    And I click on the "facilities_management_procurement_tupe_false" option
#    And I click on "Save and continue"
#    And I am on "Contract period" page
#    And I enter the number of year as "<years>"
#    And I enter the day as "<day>"
#    And I enter the month as "<month>"
#    And I enter the year as "<year>"
#    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
#    And I enter the mobilisation period for 4 weeks
#    And I click on the "facilities_management_procurement_extensions_required_true" option
#    And I enter 1 year as the first extension period
#    And I click on add another extension period
#    And I enter 3 year as the second extension period
#    And I click on "Save and continue"
#    And I am on "Buildings" page
#    And I select first building with address "Castle Street Canteen, Victoria Court, Aberdeen, Aberdeen and Aberdeenshire, AB11 5BA"
#    And I select second building with address "Watersedge Country Park, Maltkiln Road, Barton Upon Humber, East Yorkshire And Northern Lincolnshire, DN18 5JR"
#    And I click on "Save and continue"
#    And I am on "Which facilities management services do you need for each building?" page
#    And the first building is selected
#    And I select "Mechanical and electrical engineering maintenance" for active building
#    And I click on second building
#    And I select "Ventilation and air conditioning system maintenance" for second building
#    And I click on "Save and return to detailed search summary"
#    And I click on "Building 12"
#    And I am on "Service requirements" page
#    And I click on "Answer question"
#    And I am on "Planned maintenance (PPM) services standards" page
#    And I select standard A for first service
#    And I click on "Save and return to service requirements"
#    And I click on "Back to detailed search summary"
#    And I click on "Building 3"
#    And I am on "Service requirements" page
#    And I click on "Answer question"
#    And I am on "Planned maintenance (PPM) services standards" page
#    And I select standard A for first service
#    And I click on "Save and return to service requirements"
#    And I click on "Back to detailed search summary"
#    And I click on "Continue"
#    And I should see the price displayed £1,770.03
#    And I click on the Direct award route to market
#    And I click on "Continue"
#    And the lowest priced supplier is "Halvorson, Corwin and O'Connell" and contract price is £1,770.03
#    And the second subsequent supplier is "Bogan-Koch" and contract price is £2,761.91
#    And the third subsequent supplier is "O'Keefe-Mitchell" and contract price is £2,926.33
#    And I click on "Continue to direct award"
#    And I click on "Continue to direct award"
#    And I click on "Continue"
##    And I am on "Contract details" page
#    And I click on the question for payment method
#    And I select Bacs payment
#    And I click on "Save and return"
#    And I click on the question for contract details
#    And I select invoicing contact
#    And I click on "Continue"
#    And I click on the question for Authorised representative details
#    And I select Authorised representative details
#    And I click on "Continue"
#    And I click on the question for Notices contact details
#    And I select Notices contact details
#    And I click on "Continue"
#    And I click on the question for Security policy
#    And I select Security policy option
#    And I click on "Save and return"
#    And I click on the question for Local Government Pension Scheme
#    And I select pension option
#    And I click on "Save and continue"
#    And I click on "Continue"
#    And I click on "Generate documents"
#    And I click on "Create final contract and send to supplier"
#    And I click on "Confirm and send contract to supplier"
##    And I am on the "Your contract was sent" page
##    And I click on "Return to procurements dashboard"
#
#
#
#      Examples:
#      | years | day | month | year |
#      |   1   | 12  | 10    | 2020 |
#
#
#
#
##    And I select yes for TUPE
##    And I click save and continue
#
##    And I select "true" for TUPE
##    And I enter number of weeks as "<weeks>"
##    And I select "false" for optional call off extension
##    And I click save and continue
##    And I select a building
##    And I click save and continue
##    And I select all services for selected building
###      And I click 'box_all'
##    And I click on a saved and return to detailed search
##    And I click on building
##    And I click on Answer question
##    And I select standard A for first service
##    And I select standard B for second service
##    And I click on a saved and return to service information
##    And I click on a back to service information
##    And I click continue
#
##    Examples:
##      | years | day | month | year | weeks |
##      |   1   | 12  | 10    | 2020 |   4   |
#
#
##  Scenario Outline: FM procurement dashboard
##      And I click on procurement dashboard
##      And I click on a saved procurement
##      And I click save and continue
#
#
##  Scenario: FM procurement dashboard
##    And I click on procurement dashboard
##    And I click on a saved procurement
##    And I click on building
##    And I should see the uom information
##    And I click on a back to service information
##    And I click continue
##    And I should see the assessed value price
##    And I click on change requirements
#
#
#
#
#
#
#
