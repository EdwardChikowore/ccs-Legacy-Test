Feature:  Facilities Management - Services - Workplace FM - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page

  Scenario: FM - Services - Workplace FM Services - Content

    When I click on "Workplace FM services"
    Then The following workplace services are displayed:
      | Handyman services                          |
      | Move and space management - internal moves |
      | Clocks                                     |
      | Mail services                              |
      | Internal messenger service                 |
      | Courier booking and external distribution  |
      | Porterage                                  |
      | Signage                                    |
      | Archiving (on-site)                        |
      | Furniture management                      |
      | Space management                          |
      | Cable management                          |
      | Reprographics service                     |
      | Stores management                         |
      | Portable washroom solutions               |
      | Administrative support services           |
      |                                                   |

    Then The following description is displayed:
      | Responsive handyman services during operational working hours                                                        |
      | Managing the moves, working with space planners                                                                      |
      | Managing clocks on the premises, including battery replacement, clock adjustment and maintenance                     |
      | The management and successful operation of a mail room service                                                       |
      | Provision of a messenger service at each buyer premises                                                              |
      | Managing and co-ordinating a national and international courier service for the buyer                                |
      | Provision of a professionally managed flexible porterage service                                                     |
      | Responsibility for signage regarding health and safety regulations, means of escape, statutory / mandatory signage   |
      | A holistic document storage service, based on the buyer’s requirement and the on-site storage capacity               |
      | Provision of all necessary office items for new starters, as moves occur, or for new premises                       |
      | Space management services and office moves                                                                          |
      | Cable management service including installation of additional data cabling, and moving floor boxes and grommets     |
      | A service for the bulk copying, finishing and binding of documents                                                  |
      | Provision, management and operation of a storage and supply service on behalf of the buyer at the buyer premises    |
      | Management and cleaning of latrines. Supply of portable facilities on behalf of the buyer as-and-when required      |
      | Provision of administrative support services, for example, clerical support, event management, switchboard services |
      |                                                                                                                             |
    Then I should see text "No services selected" in the service selection basket
    When I select all workplace services
    Then I should see text "16 services selected" in the service selection basket
    When I select all workplace services
    Then I should see text "No services selected" in the service selection basket