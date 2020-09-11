Feature:Deep (periodic) cleaning
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Deep (periodic) cleaning"
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the service requirements summary page

  Scenario: Selecting building service standards
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Deep (periodic) cleaning" page
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |Select the level of standard|
    When I select standard A
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on service standards change link
    Then I am on the "Deep (periodic) cleaning" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










