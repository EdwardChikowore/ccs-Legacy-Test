Feature:  Facilities Management - Services - Reception - Page Content

  Scenario: FM - Services - Reception Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all
    When I click on "Reception services"
    Then the following "Reception services" are displayed:
      | Reception service                   |
      | Taxi booking service                |
      | Car park management and booking     |
      | Voice announcement system operation |
    Then the following descriptions for "Reception services" are displayed:
      | Provision of a professional reception service appropriate to the business use of the buyer premises       |
      | Managing and co-ordinating a taxi booking service for the buyer                                           |
      | A car park management and booking service                                                                 |
      | A service making broadcasts or announcements via the voice announcement system, as requested by the buyer |
    Then I should see text "No services selected" in the selection basket
    When I select all "Reception services"
    Then I should see text "4 services selected" in the selection basket
    When I select all "Reception services"
    Then I should see text "No services selected" in the selection basket
