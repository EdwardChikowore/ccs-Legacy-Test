Feature:Buildings

  Background: Login page
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Building management system (BMS) maintenance"
    And I am on requirements page


  Scenario: Validation error when no building is selected
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Save and continue"
    Then I should see the following error messages:
      | Select at least one building  |
    When I select building 1
    And I click on "Save and continue"
    Then I am on "Buildings summary" page


  Scenario: Change building selection
    When I click on "Buildings"
    And I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 1         |
      | building  |
    When I click on "Change"
    And I am on "Buildings" page
    And I select buildings 2 to 6
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 6         |
      | buildings |


  Scenario: Navigate to add buildings page - Return to buildings link
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    Then I am on "Add a building" page
    When I click on "Return to buildings"
    Then I am on "Buildings" page


  Scenario: Navigate to add buildings page
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    Then I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode  | SW1W9SZ  |
    And I click on find address
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    And I select the first building type
    And I click on "Save and continue"
    Then I am on "Security clearance" page
    And I click on "Save and return to building details summary"
    Then I should see the following error messages:
      | You must select a security clearance level  |
    When I click on security type other
    And I click on "Save and return to building details summary"
    Then I should see the following error messages:
      | You must describe the security clearance level  |
    When I enter "test one" in security type description text box
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    When I click on "Return to buildings"
    Then I am on "Buildings" page


  Scenario: Navigate to building details summary page - Return to buildings link
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Details"
    Then I am on the "Building details summary" page
    When I click on "Return to buildings"
    Then I am on "Buildings" page


  Scenario: Return to requirements link
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Return to requirements"
    Then I am on "Requirements" page

