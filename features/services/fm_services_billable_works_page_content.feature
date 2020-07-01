Feature:  Facilities Management - Services - Management of Billable Works - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page


  Scenario: FM - Services - Management of Billable Works - Content

    When I click on "Management of billable works"
    Then I should see text "No services selected"
    When I select all services listed for Management of billable works
    Then I should see text "1 Service selected"
    When I select all services listed for Management of billable works
    Then I should see text "No services selected"
