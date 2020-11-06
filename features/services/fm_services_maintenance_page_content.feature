Feature:  Facilities Management - Services - Maintenance - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page

  Scenario: FM - Services - Maintenance Services - Content
    When I click on "Maintenance services"
    Then The following maintenance services are displayed:
      | Mechanical and electrical engineering maintenance   |
      | Ventilation and air conditioning system maintenance |
      | Environmental cleaning service                      |
      | Fire detection and firefighting systems maintenance |
      | Security, access and intruder systems maintenance   |
      | Internal & external building fabric maintenance     |
      | Building management system (BMS) maintenance        |
      | Standby power system maintenance                    |
      | High voltage (HV) and switchgear maintenance        |
      | Lifts, hoists & conveyance systems maintenance     |
      | Catering equipment maintenance                     |
      | Reactive maintenance services                      |
      | Planned / group re-lamping service                 |
      | Automated barrier control system maintenance       |
      | Audio visual (AV) equipment maintenance            |
      | Television cabling maintenance                     |
      | Mail room equipment maintenance                    |
      | Office machinery servicing and maintenance         |
      | Voice announcement system maintenance              |
      | Locksmith services                                 |
      | Airport and aerodrome maintenance services         |
      | Specialist maintenance services                    |
      |                                                            |
    Then The following description is displayed:
      | Maintenance of mechanical, electrical and plumbing systems, ensuring optimum performance and statutory obligations                  |
      | Maintenance of ventilation and air conditioning systems ensuring optimum performance and statutory obligations                      |
      | Environmental cleaning service to ensure compliance with all statutory requirements                                                 |
      | Maintenance and testing of fire detection and firefighting systems                                                                  |
      | Maintenance of all security, access and intruder systems within the buyer’s premises                                                |
      | Maintenance of the internal and external building fabric, taking account of the asset registers, and planned maintenance schedules  |
      | Maintenance of the building management system to allow an efficient and effective building engineering service                      |
      | Maintenance and operation of backup generators and uninterrupted power supply equipment                                             |
      | Maintenance of high voltage (hv) and switchgear in accordance with manufacturers’ recommendations and statutory obligations         |
      | Maintenance of the lifts, hoists and conveyance systems within the buyer premises                                                  |
      | Maintenance of catering equipment in accordance with manufacturers’ and installers’ recommendations and statutory obligations      |
      | Provision of a professionally managed service for reactive repairs and maintenance 24 hours per day, 365 days per year             |
      | Re-lamping service within the buyers premise, achieving the greatest possible reduction in replacement frequency and cost          |
      | Maintenance service for automated barriers, shutters, turn-styles, doors and electrified fencing                                   |
      | Maintenance of any av equipment which is designed to display or take input from portable media or is computer driven               |
      | Maintenance of the existing cabling infrastructure which is designated for the transmission of television pictures                 |
      | Operation and maintenance of mail room equipment, including franking machines, sorters, postal scales and x-ray scanners           |
      | Office machinery servicing and maintenance, including photocopiers, fax machines, scanners and shredders                           |
      | Provision and maintenance of all voice announcement systems and equipment                                                          |
      | Specialist locksmith service to repair or replace ironmongery                                                                      |
      | Maintenance activities and inspections at airports, aerodromes and associated support facilities                                   |
      | Specialist maintenance services, including bulk aircraft fuel supply, offshore hazard markers, coal-fired boilers, sewerage plants |
      |                                                                                                                                            |
    Then I should see text "No services selected" in the service selection basket
    When I select all maintenance services
    Then I should see text "22 services selected" in the service selection basket
    When I select all maintenance services
    Then I should see text "No services selected" in the service selection basket
