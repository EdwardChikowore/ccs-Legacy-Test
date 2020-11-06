Feature:Buildings
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Building management system (BMS) maintenance"
    And I am on requirements page

  Scenario: Validation error when no building is selected
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Save and continue"
    Then I should see the following error messages
    |Select at least one building|
    When I select first building
    And I click on "Save and continue"
    Then I am on "Buildings summary" page


  Scenario: Change building selection
    When I click on "Buildings"
    And I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And The following building summary text is displayed:
      | 1\nbuilding |
    When I click on "Change"
    And I am on "Buildings" page
    And I select second building
    And I select third building
    And I select fourth building
    And I select fifth building
    And I select sixth building
    And I select seventh building
    And I select eighth building
    And I select ninth building
    And I select tenth building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And The following building summary text is displayed:
      | 10\nbuildings |

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
      | Postcode                           | SW1W9SZ  |
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
    Then I should see the following error messages
      |You must select a security clearance level         |
    When I click on security type other
    And I click on "Save and return to building details summary"
    Then I should see the following error messages
      |You must describe the security clearance level     |
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

