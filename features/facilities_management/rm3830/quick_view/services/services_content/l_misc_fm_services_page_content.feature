Feature:  Facilities Management - Services - Miscellaneous FM - Page Content

  Scenario: FM - Services - Miscellaneous FM Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all
    When I click on "Miscellaneous FM services"
    Then the following "Miscellaneous FM services" are displayed:
      | Childcare facility                                     |
      | Sports and leisure                                     |
      | Driver and vehicle service                             |
      | First aid and medical service                          |
      | Flag flying service                                    |
      | Journal, magazine and newspaper supply                 |
      | Hairdressing services                                  |
      | Footwear cobbling services                             |
      | Provision of chaplaincy support services               |
      | Housing and residential accommodation management       |
      | Training establishment management and booking service  |
    Then the following descriptions for "Miscellaneous FM services" are displayed:
      | Childcare nursery service for children aged between three months and an age suitable for first entry to school                                      |
      | Full management of the sports and leisure facilities including the booking of activity rooms, equipment and managing payment systems                |
      | Driver and vehicle service may include vehicle inspection and maintenance services, valet services, breakdown services                              |
      | First aid and medical services in line with health and safety executive guidance to visitors or staff who are injured whilst on the buyer premises  |
      | Provision of a flag flying service                                                                                                                  |
      | Managing the provision of journals, magazines and newspapers                                                                                        |
      | Hairdressing service at the buyer premises, including provision of all hairdressing equipment and materials                                         |
      | Provision of footwear cobbling service                                                                                                              |
      | Provision of chaplaincy support service at the buyer premises                                                                                       |
      | Professionally managed housing and estates management service, for residential occupancy and potential occupancy by buyer staff                     |
      | Managing the delivery, bid and allocation processes associated with all types of specialist training events held at the buyer premises              |
    Then I should see text "No services selected" in the selection basket
    When I select all "Miscellaneous FM services"
    Then I should see text "11 services selected" in the selection basket
    When I select all "Miscellaneous FM services"
    Then I should see text "No services selected" in the selection basket
