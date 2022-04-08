Feature:  Facilities Management - Services - Helpdesk - Page Content

  Scenario: FM - Services - Helpdesk - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on hide all sections
    When I click on "Helpdesk services"
    Then the following "Helpdesk services" are displayed:
      | Helpdesk services |
    Then the following descriptions for "Helpdesk services" are displayed:
      | Fully staffed, supervised helpdesk service for all FM related service requests and fault reporting  |
    Then I should see text "No services selected" in the selection basket
    When I select all "Helpdesk services"
    Then I should see text "1 service selected" in the selection basket
    When I select all "Helpdesk services"
    Then I should see text "No services selected" in the selection basket
