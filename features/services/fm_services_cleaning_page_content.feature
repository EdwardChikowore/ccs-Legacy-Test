Feature:  Facilities Management - Services - Cleaning - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page


  Scenario: FM - Services - Cleaning Services - Content
    When I click on "Cleaning services"
    Then The following cleaning services are displayed:
      | Routine cleaning                                       |
      | Cleaning of integral barrier mats                      |
      | Mobile cleaning                                        |
      | Deep (periodic) cleaning                               |
      | Window cleaning (internal)                             |
      | Window cleaning (external)                             |
      | Pest control services                                 |
      | Cleaning of external areas                             |
      | Reactive cleaning (outside cleaning operational hours) |
      | Cleaning of communications and equipment rooms         |
      | Housekeeping                                           |
      | IT equipment cleaning                                 |
      | Cleaning of curtains and window blinds                |
      | Medical and clinical cleaning                         |
      | Linen and laundry services                            |
    Then The following description is displayed:
      | Professional office cleaning to all areas, furniture, walls and floor spaces                                           |
      | Maintenance and cleaning of barrier matting                                                                            |
      | Professional office cleaning to all areas, furniture, walls and floor spaces. Delivered via a mobile cleaning solution |
      | Deep (periodic) cleaning service - programme management, deep clean service, coordination with onsite staff            |
      | Internal window cleaning service including provision of access equipment, labour and materials                         |
      | External window cleaning service including provision of access equipment, labour and materials                         |
      | Planned and reactive pest control services, to keep the premises free from all types of rodents, birds and insects    |
      | Cleaning of external building fabric, lighting, fixtures and fittings, and external areas                              |
      | Managing and supplying reactive cleaning services                                                                      |
      | Cleaning of communication and equipment rooms to the required cleaning standard                                        |
      | Professionally managed housekeeping service for staff and visitors at the buyer premises                              |
      | Cleaning of desktop computers, screens and keyboards                                                                  |
      | Specialist cleaning service, for example, for antiques, artwork, ceramics, pictures, fabrics and chandeliers          |
      | Professionally managed curtain and window blinds cleaning service                                                     |
      | Cleaning of all medical, clinical and laboratories                                                                    |
      | Laundering, organisation and control of linen stocks. Supply of linen                                                 |
    Then I should see text "No services selected"
    When I select all cleaning services
    Then I should see text "16 Services selected"
    When I select all cleaning services
    Then I should see text "No services selected"
