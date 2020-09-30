Feature: Create buildings for tests
  
  @set_up
  Scenario Outline: Add Buildings needed for tests
    Given I am a logged in user
    Then I am on your account page
    Then I should see the navigation panel has sign out link
    When I click on "Manage my buildings"
    And I am on "Buildings" page
    And I click on "Add a building"
    And I am on "Add a building" page
    And I enter the building name "<building_name>"
    And I enter "<postcode>" for the postcode
    And I click on find address
    And I select the building address "<address>" from the drop down option
    And I click on "Save and continue"
    And I am on "Internal and external areas" page
    And I enter <gia> for internal area
    And I enter <external_area> for external area
    And I click on "Save and continue"
    And I am on "Building type" page
    And I click on view more building type link
    And I select the building type of "<building_type>"
    And I click on "Save and continue"
    And I am on "Security clearance" page
    And I select the security clearance of "<security_clearance>"
    And I click on "Save and return to building details summary"
    And I am on the "Building details summary" page

  Examples:
    | building_name           | postcode  | address                 | gia   | external_area | building_type                         | security_clearance                          |
    | Aberdeen                | AB10 1AL  | Marischal College       |   2   | 1             | General office - customer facing      | Baseline personnel security standard (BPSS) |
    | Belfast Building        | BT1 1DA   | 8-10                    | 9     | 9             | General office - customer facing      | No specific requirement                     |
    | Birmingham              | B9 5QA    | 255 Yardley Green Road  | 45    | 0             | Call centre operations                | Baseline personnel security standard (BPSS) |
    | Building 13             | BT1 1DA   | 8-10                    | 10    | 15            | General office - non customer facing  | Baseline personnel security standard (BPSS) |
    | Building 3              | NW14DF    | 2 Marylebone Road       | 100   | 60            | General office - non customer facing  | Baseline personnel security standard (BPSS) |
    | Coventry House          | CV6 1PH   | 68 Kingsbury Road       | 40    | 0             | Warehouses                            | Baseline personnel security standard (BPSS) |
    | London building         | NW1 4DF   | 	2 Marylebone Road     | 63200 | 600           | General office - customer facing      | Baseline personnel security standard (BPSS) |
    | Luton Building          | LU5 5NU   | 31 Hillborough Crescent | 90    | 0             | Restaurant and catering facilities    | Baseline personnel security standard (BPSS) |
    | Manchester Building     | M16 7GH   | 40 Raby Street          | 50    | 0             | Pre-school                            | Baseline personnel security standard (BPSS) |
    | Northern Ireland        | BT1 1FX   | Hampden House           | 1000  | 0             | Primary school                        | Baseline personnel security standard (BPSS) |
    | Outer Belfast           | BT48 6HW  | 15 The Diamond          | 97    | 0             | Special schools                       | Baseline personnel security standard (BPSS)	|
    | Outside London building | M18 7GQ   | 10 Kenton Avenue        | 63200 | 600           | General office - non customer facing  |	No specific requirement                     |
    | Swansea                 | SA1 5JN   | Ty Gwalia 7-13          | 90    | 0             | Secondary school                      | Baseline personnel security standard (BPSS) |
    | Westminster Building    | SW1A 2AA	| 10 Downing Street       | 2     | 0             | Doctors, dentists and health clinics  | Baseline personnel security standard (BPSS) |
    | Wolverhampton           | WV2 2AA   | 101 Ward Street         | 6     | 0             | Nursery and care homes                | Baseline personnel security standard (BPSS) |
