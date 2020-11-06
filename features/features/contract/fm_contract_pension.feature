Feature:  Facilities Management - Contract - Local Government Pension Scheme

  Background: Local Government Pension Scheme
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page


  Scenario: Error validation message when no option is selected
    When I click on save and continue button
    Then I should see the following error messages
      |Select one answer |

  Scenario: Pension funds validation error message
    When I click on "true" option
    And I click on save and continue button
    And I am on "Pension funds" page
    And I enter the following details into the form:
      |Pension fund name 1               | Test 0001   |
      | Percentage of pensionable pay    | 0           |
    And I click on "Add another pension fund (98 remaining)"
    And I enter the following details into the form:
      |Pension fund name 2              | Test 0001   |
    And I click on "Add another pension fund (97 remaining)"
    When I click on "Save and return"
    Then I should see the following error messages
      |Percentage of pensionable pay must be a number between 0.0001 to 100 inclusive, like 99.9999 or 34|
      |Enter a percentage of pensionable pay|
      |Enter a unique pension fund name, duplication is not allowed|
      |Enter a pension fund name|
      |Enter a percentage of pensionable pay|

  Scenario: Pension funds - Valid details entered
    When I click on "true" option
    And I click on save and continue button
    And I am on "Pension funds" page
    And I enter the following details into the form:
      |Pension fund name 1               | Test 0001   |
      |Percentage of pensionable pay     | 56           |
    When I click on "Save and return"
    And I am on "Contract details" page
