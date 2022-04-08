Feature:Services with no service questions

  Scenario: Navigating to results page
    Given I am a logged in user - buildings account - for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I select services with no service questions
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Continue to results"
    Then I am on "Estimated contract cost" page
    And I choose lot 1a
    And I click on "Continue"
    Then I am on "Results" page
    And I click on "Continue"
    Then I am on "Further competition" page
    And I click on "Save as further competition"
    And I am on the "Download your procurement summary" page
    And I click on "Make a copy of your requirements"
    And I am on "Create a copy" page
    When I add contract name
    And I click on "Save and continue"
    Then I am on "Requirements" page
