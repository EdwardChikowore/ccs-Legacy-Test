Feature: Facilities Management - Search Results - Search - Create

  Background:
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on select all for "North East England"
    And I click on select all for "North West England"
    And I click on select all for "Yorkshire and Humber"
    And I click on select all for "East Midlands"
    And I click on select all for "West Midlands"
    And I click on select all for "East England"
    And I click on select all for "London"
    And I click on select all for "South East England"
    And I click on select all for "South West England"
    And I click on select all for "Wales"
    And I click on select all for "Scotland"
    And I click on select all for "Northern Ireland"
    And I should see text "73 regions selected" in the selection basket
    And I click on "Continue"

  Scenario: FM - Search Results - Create Search - Save your search
    And I add contract name
    And I click on "Save and continue to procurement"
    And I am on "What happens next" page

  Scenario: FM - Search Results - Create Search - Save your search
    And I add contract name
    And I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page