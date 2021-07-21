Feature: Direct Award scenario Two

  Scenario: Direct Award Scenario One - TUPE, CAFM, Helpdesk, Management
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Fire detection and firefighting systems maintenance"
    And I check "High voltage (HV) and switchgear maintenance"
    And I check "Internal & external building fabric maintenance"
    And I check "Building management system (BMS) maintenance"
    And I check "Environmental cleaning service"
    And I check "Fire detection and firefighting systems maintenance"
    And I check "High voltage (HV) and switchgear maintenance"
    And I check "Internal & external building fabric maintenance"
    And I check "Lifts, hoists & conveyance systems maintenance"
    And I check "Mechanical and electrical engineering maintenance"
    And I check "Security, access and intruder systems maintenance"
    And I check "Standby power system maintenance"
    And I check "Ventilation and air conditioning system maintenance"
    And I check "Asbestos management"
    And I check "Compliance plans, specialist surveys and audits"
    And I check "Conditions survey"
    And I check "Electrical testing"
    And I check "Fire risk assessments"
    And I check "Portable appliance testing"
    And I check "Statutory inspections"
    And I check "Water hygiene maintenance"
    And I check "Cleaning of external areas"
    And I check "Cleaning of integral barrier mats"
    And I check "Deep (periodic) cleaning"
    And I check "Mobile cleaning"
    And I check "Pest control services"
    And I check "Routine cleaning"
    And I check "Window cleaning (external)"
    And I check "Window cleaning (internal)"
    And I check "Handyman services"
    And I check "Move and space management - internal moves"
    And I check "Car park management and booking"
    And I check "Handyman services"
    And I check "Move and space management - internal moves"
    And I check "Car park management and booking"
    And I check "Reception service"
    And I check "Taxi booking service"
    And I check "Voice announcement system operation"
    And I check "CCTV / alarm monitoring"
    And I check "Control of access and security passes"
    And I check "Emergency response"
    And I check "Management of visitors and passes"
    And I check "Manned guarding service"
    And I check "Patrols (fixed or static guarding)"
    And I check "Classified waste"
    And I check "Feminine hygiene waste"
    And I check "General waste"
    And I check "Recycled waste"
    And I check "CAFM system"
    And I check "Helpdesk services"
    And I check "Management of billable works"
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
    And I select "No" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "No" for mobilisation period required
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
    And I should see the price displayed "£238,274.89"
    And I click on the "Direct award" route to market
    And I click on "Continue"
    And the lowest priced supplier is "Shields, Ratke and Parisian" and contract price is "£238,274.89"
    And supplier number 2 contract price is "£239,619.36"
    And supplier number 3 contract price is "£243,723.86"
    And supplier number 4 contract price is "£281,644.29"
    And supplier number 5 contract price is "£295,460.95"
    And supplier number 6 contract price is "£300,539.80"
    And supplier number 7 contract price is "£315,235.08"
    And supplier number 8 contract price is "£323,269.59"
    And supplier number 9 contract price is "£372,022.46"
    And supplier number 10 contract price is "£404,737.94"
