Feature:  Facilities Management - Services - Management of Billable Works - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page


  Scenario: FM - Services - Management of Billable Works - Content

    When I click on "Management of billable works"
    Then I should see text "No services selected" in the service selection basket
    When I select all services listed for Management of billable works
    Then I should see text "1 service selected" in the service selection basket
    When I select all services listed for Management of billable works
    Then I should see text "No services selected" in the service selection basket
