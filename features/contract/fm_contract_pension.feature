Feature:  Facilities Management - Contract - Local Government Pension Scheme

  Scenario: Local Government Pension Scheme
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I am on "Contract details" page
    And I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    And I click on "true" option
    And I click on "Save and continue"
    Then I am on "Pension funds" page
