Feature: Quick view results - Service selection

  Background:
    Given I am a logged in user
    Then I am on your account page
    When I click on "Quick view suppliers"
    And I am on "Services" page

  Scenario: View all services on results
    Given I click on open all
    And I select all maintenance services
    And I select all horticultural services
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    And I select all reception services
    And I select all security services
    And I select all waste services
    And I select all miscellaneous services
    And I select all cafm service
    And I select all helpdesk services
    And I select all services listed for Management of billable works
    And I should see text "116 services selected"
    And I click on "Continue"
    And I am on "Regions" page
    And I click on open all
    And I click on select all for North East England
    And I should see text "2 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I open the services selected
    Then I should see the following services:
      | Mechanical and electrical engineering maintenance             |
      | Ventilation and air conditioning system maintenance           |
      | Environmental cleaning service                                |
      | Fire detection and firefighting systems maintenance           |
      | Security, access and intruder systems maintenance             |
      | Internal & external building fabric maintenance               |
      | Building management system (BMS) maintenance                  |
      | Standby power system maintenance                              |
      | High voltage (HV) and switchgear maintenance                  |
      | Lifts, hoists & conveyance systems maintenance                |
      | Catering equipment maintenance                                |
      | Reactive maintenance services                                 |
      | Planned / group re-lamping service                            |
      | Automated barrier control system maintenance                  |
      | Audio visual (AV) equipment maintenance                       |
      | Television cabling maintenance                                |
      | Mail room equipment maintenance                               |
      | Office machinery servicing and maintenance                    |
      | Voice announcement system maintenance                         |
      | Locksmith services                                            |
      | Airport and aerodrome maintenance services                    |
      | Specialist maintenance services                               |
      | Grounds maintenance services                                  |
      | Tree surgery (arboriculture)                                  |
      | Professional snow & ice clearance                             |
      | Reservoirs, ponds, river walls and water features maintenance |
      | Internal planting                                             |
      | Cut flowers and christmas trees                               |
      | Asbestos management                                           |
      | Water hygiene maintenance                                     |
      | Statutory inspections                                         |
      | Compliance plans, specialist surveys and audits               |
      | Conditions survey                                             |
      | Electrical testing                                            |
      | Fire risk assessments                                         |
      | Portable appliance testing                                    |
      | Building information modelling and government soft landings   |
      | Chilled potable water                                         |
      | Retail services / convenience store                           |
      | Deli/coffee bar                                               |
      | Events and functions                                          |
      | Full service restaurant                                       |
      | Hospitality and meetings                                      |
      | Outside catering                                              |
      | Trolley service                                               |
      | Vending services (food & beverage)                            |
      | Residential catering services                                 |
      | Routine cleaning                                              |
      | Cleaning of integral barrier mats                             |
      | Mobile cleaning services                                      |
      | Deep (periodic) cleaning                                      |
      | Window cleaning (internal)                                    |
      | Window cleaning (external)                                    |
      | Pest control services                                         |
      | Cleaning of external areas                                    |
      | Reactive cleaning (outside cleaning operational hours)        |
      | Cleaning of communications and equipment rooms                |
      | Housekeeping                                                  |
      | It equipment cleaning                                         |
      | Specialist cleaning                                           |
      | Cleaning of curtains and window blinds                        |
      | Medical and clinical cleaning                                 |
      | Linen and laundry services                                    |
      | Handyman services                                             |
      | Move and space management - internal moves                    |
      | Clocks                                                        |
      | Mail services                                                 |
      | Internal messenger service                                    |
      | Courier booking and external distribution                     |
      | Porterage                                                     |
      | Signage                                                       |
      | Archiving (on-site)                                           |
      | Furniture management                                          |
      | Space management                                              |
      | Cable management                                              |
      | Reprographics service                                         |
      | Stores management                                             |
      | Portable washroom solutions                                   |
      | Administrative support services                               |
      | Reception service                                             |
      | Taxi booking service                                          |
      | Car park management and booking                               |
      | Voice announcement system operation                           |
      | Manned guarding service                                       |
      | Cctv / alarm monitoring                                       |
      | Control of access and security passes                         |
      | Emergency response                                            |
      | Patrols (fixed or static guarding)                            |
      | Management of visitors and passes                             |
      | Reactive guarding                                             |
      | Additional security services                                  |
      | Enhanced security requirements                                |
      | Key holding                                                   |
      | Lock up / open up of buyer premises                           |
      | Patrols (mobile via a specific visiting vehicle)              |
      | General waste                                                 |
      | Recycled waste                                                |
      | Classified waste                                              |
      | Feminine hygiene waste                                        |
      | Hazardous waste                                               |
      | Clinical waste                                                |
      | Medical waste                                                 |
      | Childcare facility                                            |
      | Sports and leisure                                            |
      | Driver and vehicle service                                    |
      | First aid and medical service                                 |
      | Flag flying service                                           |
      | Journal, magazine and newspaper supply                        |
      | Hairdressing services                                         |
      | Footwear cobbling services                                    |
      | Provision of chaplaincy support services                      |
      | Housing and residential accommodation management              |
      | Training establishment management and booking service         |
      | CAFM system                                                   |
      | Helpdesk services                                             |
      | Management of billable works                                  |

  Scenario: Change service selection
    Given I click on open all
    And I select all horticultural services
    And I should see text "6 services selected"
    And I click on "Continue"
    And I am on "Regions" page
    And I click on open all
    And I click on select all for North East England
    And I should see text "2 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I change service selection
    Then I am on "Services" page
    And I click on open all
    And I select all horticultural services
    And I select all maintenance services
    And I should see text "22 services selected"
    Then I click on "Continue"
    And I am on "Regions" page
    Then I click on "Continue"
    And I am on "Quick view results" page
    Then I open the services selected
    Then I should see the following services:
      | Mechanical and electrical engineering maintenance             |
      | Ventilation and air conditioning system maintenance           |
      | Environmental cleaning service                                |
      | Fire detection and firefighting systems maintenance           |
      | Security, access and intruder systems maintenance             |
      | Internal & external building fabric maintenance               |
      | Building management system (BMS) maintenance                  |
      | Standby power system maintenance                              |
      | High voltage (HV) and switchgear maintenance                  |
      | Lifts, hoists & conveyance systems maintenance                |
      | Catering equipment maintenance                                |
      | Reactive maintenance services                                 |
      | Planned / group re-lamping service                            |
      | Automated barrier control system maintenance                  |
      | Audio visual (AV) equipment maintenance                       |
      | Television cabling maintenance                                |
      | Mail room equipment maintenance                               |
      | Office machinery servicing and maintenance                    |
      | Voice announcement system maintenance                         |
      | Locksmith services                                            |
      | Airport and aerodrome maintenance services                    |
      | Specialist maintenance services                               |

  Scenario: Change service selection - validation
    Given I click on open all
    And I select all maintenance services
    And I select all horticultural services
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    And I select all reception services
    And I select all security services
    And I select all waste services
    And I select all miscellaneous services
    And I select all cafm service
    And I select all helpdesk services
    And I select all services listed for Management of billable works
    And I should see text "116 services selected"
    And I click on "Continue"
    And I am on "Regions" page
    And I click on open all
    And I click on select all for North East England
    And I should see text "2 regions selected"
    Then I click on "Continue"
    And I am on "Quick view results" page
    Given I change service selection
    Then I am on "Services" page
    And I click on "Remove all"
    And I should see text "No services selected"
    Then I click on "Continue"
    Then I should see the following error messages
      | Select at least one service you need to include in your procurement |