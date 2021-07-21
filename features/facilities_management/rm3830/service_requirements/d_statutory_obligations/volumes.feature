Feature: Stautory obligations volume questions

  Scenario: Portable appliance testing volume questions
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select "Portable appliance testing" and navigate to the service requirements page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "Portable appliance testing" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | Enter number of portable appliances |
    When I enter "0" for the service volume
    And I click on "Save and return"
    Then I should see the following error messages:
      | The number of portable appliances must be a whole number between 1 and 999,999,999  |
    When I enter "999999999" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Portable appliance testing" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page
