Feature:Manage Building
  Background:
    Given I am a logged in user - buildings account
    Then I should see the navigation panel has sign out link
    When I click on manage my buildings link
    And I am on "Buildings" page

  Scenario: Add Building - validation error message - empty fields
    And I click on "Add a building"
    And I am on "Add a building" page
    When I click on "Save and continue"
    Then I should see the following error messages
      |Enter a name for your building       |
      |Enter a valid postcode, like AA1 1AA |

  Scenario: Add Building - validation error message - Region and Address selection
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | LU6 1GQ  |
    When I click on "Save and continue"
    Then I should see the following error messages
      |You must select an address to save a building |
    And I select the building address "10 Sidings Way" from the drop down option
    Then The building address name displayed is "10 Sidings Way, Dunstable LU6 1GQ"
    When I click on "Save and continue"
    Then I should see the following error messages
      |You must select a region for your address     |
    And I select region "Bedfordshire and Hertfordshire" from the drop down option
    And The building region text displayed is "Bedfordshire and Hertfordshire"
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page

  Scenario: Add Address manually - Validation Error
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | SW1W 9SZ  |
    And I click on "Find address"
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    And I click on "Save and continue"
    Then I should see the following error messages
      |Add a building and street name|
      |Enter the town or city|

  Scenario: Add Address manually - Save
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | LU6 1GQ  |
    And I click on find address
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    And I enter the following details into the form:
      | Building and street                         | 112 Test street      |
      | Building and street line 2 of 2 (optional)  |  Zone 7              |
      | Town or city                                | Westminister         |
      | Postcode                                    | NW1 4DF              |
    And I click on "Save and continue"
    Then I am on "Add a building" page
    Then The building address name displayed is "112 Test street, Zone 7, Westminister NW1 4DF"


  Scenario: Internal and External Area - Error validation
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | SW1W 9SZ  |
    And I click on "Find address"
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    When I click on "Save and continue"
    Then I should see the following error messages
      | Internal area must be a number between 0 and 999,999,999         |
      | External area must be a number between 0 and 999,999,999         |
    When I click on "Save and continue"
    And I enter 0 for internal area
    When I click on "Save and continue"
    Then I should see the following error messages
      | External area must be a number between 0 and 999,999,999          |
    And I enter 0 for external area
    And I enter 0 for internal area
    When I click on "Save and continue"
    Then I should see the following error messages
      | Internal area must be greater than 0, if the external area is 0. |
      | External area must be greater than 0, if the internal area is 0. |
    And I enter 99999999 for external area
    When I click on "Save and continue"
    Then I am on "Building type" page

  Scenario: Internal and External Area - Valid input
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | SW1W 9SZ  |
    And I click on find address
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    When I click on "Save and continue"
    Then I should see the following error messages
      | Internal area must be a number between 0 and 999,999,999  |
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page

  Scenario: Building type - Validation error
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | SW1W 9SZ  |
    And I click on find address
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    When I click on "Save and continue"
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    When I click on "Save and continue"
    Then I am on "Building type" page
    When I click on "Save and continue"
    Then I should see the following error messages
      |You must select a building type or describe your own|
    When I click on view more building type link
    And I click on building type other
    When I click on "Save and continue"
    Then I should see the following error messages
      |You must enter your description of a building type |
    When I enter "test one" in building type description text box
    And I click on "Save and continue"
    Then I am on "Security clearance" page

  Scenario: Security type - Validation error
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      | Postcode                           | SW1W 9SZ  |
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

  Scenario: Save and return to buildings details summary button
    And I click on "Add a building"
    And I am on "Add a building" page
    When I add building name
    And I enter the following details into the form:
      |Add a description (optional)        | Nursery  |
      | Postcode                           | SW1W9SZ  |
    And I click on find address
    And I select the building address "151 Buckingham Palace Road" from the drop down option
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Internal and external areas" page
    And I enter 0 for external area
    And I enter 9 for internal area
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Building type" page
    And I select the first building type
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "INCOMPLETE"
    When I click on answer question
    Then I am on "Security clearance" page
    And I select the first security type
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page
    And The building status tag is "COMPLETED"

  Scenario: Building details Summary - Change link
    And I click on the first building on manage my buildings page
    When I am on the "Building details summary" page
    Then The first change link should navigate to "Building details" page
    And I click on "Save and return to building details summary"
    Then The second change link should navigate to "Building details" page
    And I click on "Save and return to building details summary"
    Then The third change link should navigate to "Building details" page
    And I click on "Save and return to building details summary"
    Then The fourth change link should navigate to "Internal and external areas" page
    And I click on "Save and return to building details summary"
    Then The fifth change link should navigate to "Internal and external areas" page
    And I click on "Save and return to building details summary"
    Then The sixth change link should navigate to "Building type" page
    And I click on "Save and return to building details summary"
    Then The seventh change link should navigate to "Security clearance" page
    And I click on "Save and return to building details summary"
    Then I am on the "Building details summary" page