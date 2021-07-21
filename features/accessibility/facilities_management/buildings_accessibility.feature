@accessibility
Feature:  FM - Buildings - Accessibility

  Background: Navigate to buildings section
    Given I am a logged in user for "RM3830"
    When I click on "Manage my buildings"

  Scenario: FM - Manage buildings - Buildings page
    And I am on "Buildings" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Add Building
    When I click on "Add a building"
    And I am on "Add a building" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Add Building - Add address page
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode  | ST161AA  |
    And I click on "Find address"
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Internal and external areas
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode  | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Building type
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode  | ST161AA  |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Security clearance
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode  | ST161AA |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    And I select the first building type
    And I click on "Save and continue"
    Then I am on "Security clearance" page
    Then the page should be axe clean

  Scenario: FM - Manage buildings - Building summary
    When I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Add a description (optional)  | Nursery |
      | Postcode                      | ST161AA |
    And I click on find address
    And I select the building address "Stafford Delivery Office" from the drop down option
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    Then the page should be axe clean
