Feature:Recycled waste
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Recycled waste"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the service requirements summary page

  Scenario: Number of general question
    When I am on the "Service requirements" page
    And I click on Answer question
    And I am on the "Recycled waste" page
    When I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |Enter number of tonnes|
    When I enter 0 for general waste
    And I click on "Save and return"
    Then I should see the following error messages
      |There is a problem|
      |The number of tonnes must be a whole number between 1 and 999,999,999|
    When I enter 999999999 for general waste
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "Recycled waste" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page










