Feature:  Facilities Management - Services - Management of Billable Works - Page Content

  Scenario: FM - Services - Management of Billable Works - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on hide all sections
    When I click on "Management of billable works"
    Then the following "Management of billable works" are displayed:
      | Management of billable works  |
    Then the following descriptions for "Management of billable works" are displayed:
      | Chargeable services delivered outside the agreed overall contract price for example small/large projects  |
    Then I should see text "No services selected" in the selection basket
    When I select all "Management of billable works"
    Then I should see text "1 service selected" in the selection basket
    When I select all "Management of billable works"
    Then I should see text "No services selected" in the selection basket
