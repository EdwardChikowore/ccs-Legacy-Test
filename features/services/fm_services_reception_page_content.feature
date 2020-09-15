Feature:  Facilities Management - Services - Reception - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page

  Scenario: FM - Services - Reception Services - Content

    When I click on "Reception services"
    Then The following reception services are  displayed:
      | Reception service                   |
      | Taxi booking service                |
      | Car park management and booking     |
      | Voice announcement system operation |
      |                                            |
    Then The following description is displayed:
      | Provision of a professional reception service appropriate to the business use of the buyer premises       |
      | Managing and co-ordinating a taxi booking service for the buyer                                           |
      | A car park management and booking service                                                                 |
      | A service making broadcasts or announcements via the voice announcement system, as requested by the buyer |
    Then I should see text "No services selected"
    When I select all reception services
    Then I should see text "4 services selected"
    When I select all reception services
    Then I should see text "No services selected"
