Feature:  Facilities Management - Contract - Governing Law

  Background: Local Government Pension Scheme
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I click on the seventh question for "Governing law"
    And I am on "Governing law" page

  Scenario: Error validation message when no option is selected
    When I click on "Save and continue"
    Then I should see the following error messages
      |There is a problem|
      |Select one option |
    When I select english law
    And I click on "Save and continue"
    Then I am on "Contract details" page



