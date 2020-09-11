Feature:Lifts, Hoists & Conveyance Systems Maintenance
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Lifts, hoists & conveyance systems maintenance "
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the service requirements summary page

  Scenario: Lift data question
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |The number of floors accessed must be a whole number greater than 0|
    And I enter 0 for number of lift floors
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |Enter a whole number between 1 and 999|
    And I enter 99999 for number of lift floors
    And I click on "Add another lift (98 remaining)"
    And I click on "Remove"
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |Enter a whole number between 1 and 999|
    When I enter valid data for lift floor
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Lifts, hoists & conveyance systems maintenance" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










