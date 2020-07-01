Feature: Direct Award scenario One

  Background: Login page
    Given I am a logged in user

  Scenario: FM start Page
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Building management system (BMS) maintenance"
    And I click on the "Environmental cleaning service"
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "Lifts, hoists & conveyance systems maintenance"
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on the "Security, access and intruder systems maintenance"
    And I click on the "Standby power system maintenance"
    And I click on the "Ventilation and air conditioning system maintenance"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    And I click change on building name on detailed search summary
    And I am on "Service requirements" page
    And I click on "Answer question"
    And I am on "Planned maintenance (PPM) services standards" page
    And I click on "Save and return to service requirements"
    Then I should see error message header "There is a problem"
    Then I should see the following error messages
      | Select level of standard for your building management system (BMS) maintenance        |
      | Select level of standard for your environmental cleaning service                      |
      | Select level of standard for your fire detection and firefighting systems maintenance |
      | Select level of standard for your high voltage (HV) and switchgear maintenance        |
      | Select level of standard for your lifts, hoists & conveyance systems maintenance      |
      | Select level of standard for your mechanical and electrical engineering maintenance   |
      | Select level of standard for your security, access and intruder systems maintenance   |
      | Select level of standard for your standby power system maintenance                    |
      | Select level of standard for your ventilation and air conditioning system maintenance |
    And I click on "Back to service requirements"
    And I click on answer question link for lifts
    And I enter 1000 for first lift
    And I click on "Add new lift (98 remaining)"
    And I click on "Save and return to service requirements"
    Then I should see the following error messages
      | There is a problem|
      | Enter a whole number between 1 and 999, like 100.                    |
      | The number of floors accessed must be a whole number greater than 0. |
