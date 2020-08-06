Feature:  Facilities Management - Services - Computer-aided FM - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page



  Scenario: FM - Services - Computer-aided FM - Content
    When I click on "Computer-aided facilities management (CAFM)"
    Then I should see text "No services selected"
    When I select all cafm service
    Then I should see text "1 Service selected"
    When I select all cafm service
    Then I should see text "No services selected"
