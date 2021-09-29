Feature:Lifts, Hoists & Conveyance Systems Maintenance
 
  Scenario: Lift data question
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select "Lifts, hoists & conveyance systems maintenance" and navigate to the service requirements page
    And I click on "Answer question"
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | The number of floors accessed must be a whole number and greater than 0 |
    And I enter 0 for number of lift floors
    When I click on "Save and return"
    Then I should see the following error messages:
      | Enter a whole number between 1 and 999  |
    And I enter 99999 for number of lift floors
    And I click on "Add another lift (98 remaining)"
    And I click on "Remove"
    When I click on "Save and return"
    Then I should see the following error messages:
      | Enter a whole number between 1 and 999  |
    When I enter valid data for lift floor
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Lifts, hoists & conveyance systems maintenance" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










