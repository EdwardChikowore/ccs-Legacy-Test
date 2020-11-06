Feature:  Facilities Management - Services - Helpdesk - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page


  Scenario: FM - Services - Helpdesk - Content

    When I click on "Helpdesk services"
    Then The following helpdesk service is displayed:
      | Helpdesk services |
      |                          |
    Then The following description is displayed:
      | Fully staffed, supervised helpdesk service for all FM related service requests and fault reporting  |
    Then I should see text "No services selected" in the service selection basket
    When I select all helpdesk services
    Then I should see text "1 service selected" in the service selection basket
    When I select all helpdesk services
    Then I should see text "No services selected" in the service selection basket
