Feature:  Facilities Management - Contract - Governing Law

  Scenario: Error validation message when no option is selected
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I answer the "Governing law" contract detail question
    And I am on "Governing law" page
    When I click on "Save and continue"
    Then I should see the following error messages:
      | Select one option |
    When I pick "English Law" for the governing law
    And I click on "Save and continue"
    Then I am on "Contract details" page



