@environment_prep @clean_up
Feature: Delete procurements
  
  Scenario: Delete a procurement for normal user
    Given I am a logged in user for "RM3830"
    Then I am on your account page
    And I click on 'Continue a procurement'
    Then I am on 'Procurements dashboard' page
    And I delete all my procurements

  Scenario: Delete a procurement for buildings user
    Given I am a logged in user - buildings account - for "RM3830"
    Then I am on your account page
    And I click on 'Continue a procurement'
    Then I am on 'Procurements dashboard' page
    And I delete all my procurements
