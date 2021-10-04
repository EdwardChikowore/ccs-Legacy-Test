@environment_prep @set_up
Feature: Create buildings for tests
  
  Scenario Outline: Add Buildings needed for tests
    Given I am a logged in user for "RM3830"
    Then I am on your account page
    Then I should see the navigation panel has sign out link
    When I click on "Manage my buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    And I am on "Add a building" page
    And I enter the building name "<building_name>"
    And I enter "<postcode>" for the postcode
    And I click on find address
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    And I enter the following details into the form:
      | Building and street | <address_line_1>  |
      | Town or city        | <address_town>    |
    And I click on "Save and continue"
    Then I am on "Add a building" page
    And I click on "Save and continue"
    And I am on "Internal and external areas" page
    And I enter <gia> for internal area
    And I enter <external_area> for external area
    And I click on "Save and continue"
    And I am on "Building type" page
    And I open the "View more building types" details
    And I select the building type of "<building_type>"
    And I click on "Save and continue"
    And I am on "Security clearance" page
    And I select the security clearance of "<security_clearance>"
    And I click on "Save and return to building details summary"
    And I am on the "Building details summary" page

  Examples:
    | building_name           | postcode  | address_line_1          | address_town  | gia   | external_area | building_type                         | security_clearance                          |
    | Aberdeen                | AB10 1AL  | Marischal College       | Aberdeen      | 2     | 1             | General office - customer facing      | Baseline personnel security standard (BPSS) |
    | Belfast Building        | BT1 1DA   | 8-10                    | Belfast       | 9     | 9             | General office - customer facing      | No specific requirement                     |
    | Birmingham              | B9 5QA    | 255 Yardley Green Road  | Birmingham    | 45    | 0             | Call centre operations                | Baseline personnel security standard (BPSS) |
    | London building         | NW1 4DF   | 2 Marylebone Road       | London        | 63200 | 600           | General office - customer facing      | Baseline personnel security standard (BPSS) |
    | Outside London building | M18 7GQ   | 10 Kenton Avenue        | Manchester    | 63200 | 600           | General office - non customer facing  |	No specific requirement                     |
    | Westminster Building    | SW1A 2AA	| 10 Downing Street       | London        | 2     | 0             | Doctors, dentists and health clinics  | Baseline personnel security standard (BPSS) |

  Scenario Outline: Add extra Buildings needed for tests
    Given I am a logged in user - buildings account - for "RM3830"
    Then I am on your account page
    Then I should see the navigation panel has sign out link
    When I click on "Manage my buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    And I am on "Add a building" page
    And I enter the building name "<building_name>"
    And I enter "<postcode>" for the postcode
    And I click on find address
    And I click on "I can’t find my building’s address in the list"
    And I am on "Add building address" page
    And I enter the following details into the form:
      | Building and street | <address_line_1>  |
      | Town or city        | <address_town>    |
    And I click on "Save and continue"
    Then I am on "Add a building" page
    And I click on "Save and continue"
    And I am on "Internal and external areas" page
    And I enter <gia> for internal area
    And I enter <external_area> for external area
    And I click on "Save and continue"
    And I am on "Building type" page
    And I open the "View more building types" details
    And I select the building type of "<building_type>"
    And I click on "Save and continue"
    And I am on "Security clearance" page
    And I select the security clearance of "<security_clearance>"
    And I click on "Save and return to building details summary"
    And I am on the "Building details summary" page

Examples:
    | building_name           | postcode  | address_line_1          | address_town  | gia   | external_area | building_type                         | security_clearance                          |
    | Aberdeen                | AB10 1AL  | Marischal College       | Aberdeen      | 2     | 1             | General office - customer facing      | Baseline personnel security standard (BPSS) |
    | London building         | NW1 4DF   | 2 Marylebone Road       | London        | 63200 | 600           | General office - customer facing      | Baseline personnel security standard (BPSS) |
