Feature: Workplace FM services service hour questions

  Scenario Outline: Service hours questions
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I select "<service>" and navigate to the service requirements page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "<service>" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | Enter number of hours per year  |
      | Enter the detail of requirement |
    And I enter 0 for service hours
    When I click on "Save and return"
    Then I should see the following error messages:
      | Number of hours per year must be a whole number between 1 and 999,999,999 |
    And I enter 99999999999999909 for service hours
    When I click on "Save and return"
    Then I should see the following error messages:
      | Number of hours per year must be a whole number between 1 and 999,999,999 |
    When I enter 45 for service hours
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "<service>" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page

  Examples:
    | service                                     |
    | Handyman services                           |
    | Move and space management - internal moves  |