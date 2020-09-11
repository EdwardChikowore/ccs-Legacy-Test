Feature:Reception service
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Reception service"
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
    And I am on the "Reception service" page
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |Enter number of hours per year|
      |Enter the detail of requirement|
    And I enter 0 for service hours
      |There is a problem|
      |Number of hours per year must be a whole number between 1 and 999,999,999|
      |Enter the detail of requirement|
    And I enter 99999999999999909 for service hours
      |There is a problem|
      |Number of hours per year must be a whole number between 1 and 999,999,999|
      |Enter the detail of requirement|
    When I enter 45 for portable appliance testing
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Reception service" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










