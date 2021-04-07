Feature: Direct Award scenario One

  Background: Login page
    Given I am a logged in user

  Scenario: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    When I select all da services
    And I click on "Continue"
    And I click on open all
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2023"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select "Aberdeen"
    And I find and select "Belfast Building"
    And I find and select "Birmingham"
    And I find and select "Westminster Building"
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I click on "Aberdeen"
    And I select services for first building "Aberdeen"
    And I click on "Save and return"
    And I click on "Belfast Building"
    And I select services for second building "Belfast Building"
    And I click on "Save and return"
    And I click on "Birmingham"
    And I select services for third building "Birmingham"
    And I click on "Save and return"
    And I click on "Westminster Building"
    And I select services for fourth building "Westminster Building"
    And I click on "Save and return"
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on "Aberdeen"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I enter 2 for number of lift floors
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Mechanical and electrical engineering maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Fire detection and firefighting systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Security, access and intruder systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Internal & external building fabric maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Building management system (BMS) maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Standby power system maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "High voltage (HV) and switchgear maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard A
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Belfast Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter 9 for portable appliance testing
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter 9 for mobile cleaning service
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Deep (periodic) cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Cleaning of external areas" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Birmingham"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter 4 for routine cleaning
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Handyman services" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Move and space management - internal moves" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Reception service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Taxi booking service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Car park management and booking" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Voice announcement system operation" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Manned guarding service" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Cctv / alarm monitoring" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Control of access and security passes" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Emergency response" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Patrols (fixed or static guarding)" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Management of visitors and passes" page
    And I enter 1248 for service hours
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I select standard A
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Westminster Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "General waste" page
    And I enter 2 for general waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter 2 for recycled waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Classified waste" page
    And I enter 2 for classified waste
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Feminine hygiene waste" page
    And I enter 2 for feminine hygiene waste
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I should see the price displayed £251,933.78
    And I click on the Direct award route to market
    And I click on "Continue"
    And the lowest priced supplier is "Bogan-Koch" and contract price is £251,933.78
#    And the second subsequent supplier is "Supplier 2" and contract price is £250,298.86
#    And the third subsequent supplier is "Supplier 3" and contract price is £251,029.94
#    And the fourth subsequent supplier is "Supplier 4" and contract price is £260,968.75
#    And the fifth subsequent supplier is "Supplier 5" and contract price is £262,412.28
#    And the sixth subsequent supplier is "Supplier 6" and contract price is £267,133.45
#    And the seventh subsequent supplier is "Supplier 7" and contract price is £278,186.69
#    And the eighth subsequent supplier is "Supplier 8" and contract price is £279,993.33
#    And the ninth subsequent supplier is "Supplier 9" and contract price is £282,709.24
#    And the tenth subsequent supplier is "Supplier 10" and contract price is £296,928.35
