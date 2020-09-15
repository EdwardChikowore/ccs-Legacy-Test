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
    |There is a problem|
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
    Then I should see number of building text "1 building"
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
    Then I should see number of building text "10 buildings"

  Scenario: Navigate to add buildings page
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    Then I am on "Add a building" page
    When I click on "Return to buildings"
    Then I am on "Buildings" page

  Scenario: Navigate to building details summary page
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Details"
    Then I am on the "Building details summary" page

  Scenario: Navigate to building details summary page
    When I click on "Buildings"
    And I am on "Buildings" page
    And I click on "Return to requirements"
    Then I am on "Requirements" page