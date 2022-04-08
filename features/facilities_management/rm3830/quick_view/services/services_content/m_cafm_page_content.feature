Feature:  Facilities Management - Services - Computer-aided FM - Page Content

  Scenario: FM - Services - Computer-aided FM - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on hide all sections
    When I click on "Computer-aided facilities management (CAFM)"
    Then the following "Computer-aided facilities management (CAFM)" are displayed:
      | CAFM system |
    Then the following descriptions for "Computer-aided facilities management (CAFM)" are displayed:
      | CAFM system and associated software required to deliver FM services, aligned to asset requirements and SFG20  |
    Then I should see text "No services selected" in the selection basket
    When I select all "Computer-aided facilities management (CAFM)"
    Then I should see text "1 service selected" in the selection basket
    When I select all "Computer-aided facilities management (CAFM)"
    Then I should see text "No services selected" in the selection basket
