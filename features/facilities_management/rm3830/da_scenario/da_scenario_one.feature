Feature: Direct Award scenario One

  Scenario: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    When I select all da services
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select the following buildings:
      | Aberdeen              |
      | Belfast Building      |
      | Birmingham            |
      | Westminster Building  |
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I select the services for the following buildings:
      | Aberdeen              |
      | Belfast Building      |
      | Birmingham            |
      | Westminster Building  |
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
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Ventilation and air conditioning system maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Environmental cleaning service" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Fire detection and firefighting systems maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Security, access and intruder systems maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Internal & external building fabric maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Building management system (BMS) maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Standby power system maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "High voltage (HV) and switchgear maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    And I select standard "A"
    And I click on "Save and return"
    And I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Belfast Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "Portable appliance testing" page
    And I enter "9" for the service volume
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I enter "9" for the service volume
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Mobile cleaning services" page
    And I select standard "A"
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Deep (periodic) cleaning" page
    And I select standard "A"
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Cleaning of external areas" page
    And I select standard "A"
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Birmingham"
    And I click on the service question
    And I am on the "Routine cleaning" page
    And I enter "4" for the service volume
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
    And I select standard "A"
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Westminster Building"
    And I am on the "Service requirements" page
    And I click on the service question
    And I am on the "General waste" page
    And I enter "2" for the service volume
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Recycled waste" page
    And I enter "2" for the service volume
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Classified waste" page
    And I enter "2" for the service volume
    And I click on "Save and return"
    And I click on the service question
    And I am on the "Feminine hygiene waste" page
    And I enter "2" for the service volume
    And I click on "Save and return"
    And I click on "Return to service requirements summary"
    And I am on "Service requirements summary" page
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I should see the price displayed "£252,500.49"
    And I click on the "Direct award" route to market
    And I click on "Continue"
    And the lowest priced supplier is "Dickinson-Abbott" and contract price is "£252,500.49"
