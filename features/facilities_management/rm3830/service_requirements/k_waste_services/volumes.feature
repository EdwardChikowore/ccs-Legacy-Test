Feature: Waste services volume questions

  Scenario Outline: Volume questions
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select "<service>" and navigate to the service requirements page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "<service>" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | <error_message_blank>  |
    When I enter "0" for the service volume
    And I click on "Save and return"
    Then I should see the following error messages:
      | <error_message_range> |
    When I enter "999999999" for the service volume
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Change"
    Then I am on the "<service>" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page
  
  Examples:
    | service                 | error_message_blank       | error_message_range                                                     |
    | General waste           | Enter number of tonnes    | The number of tonnes must be a whole number between 1 and 999,999,999   |
    | Recycled waste          | Enter number of tonnes    | The number of tonnes must be a whole number between 1 and 999,999,999   |
    | Classified waste        | Enter number of consoles  | The number of consoles must be a whole number between 1 and 999,999,999 |
    | Feminine hygiene waste  | Enter number of units     | The number of units must be a whole number between 1 and 999,999,999    |
    | Hazardous waste         | Enter number of tonnes    | The number of tonnes must be a whole number between 1 and 999,999,999   |
    | Clinical waste          | Enter number of tonnes    | The number of tonnes must be a whole number between 1 and 999,999,999   |
    | Medical waste           | Enter number of tonnes    | The number of tonnes must be a whole number between 1 and 999,999,999   |
