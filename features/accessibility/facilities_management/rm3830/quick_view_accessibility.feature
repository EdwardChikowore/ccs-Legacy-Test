@accessibility
Feature:  FM - Quick View - Accessibility

  Background: Login
    Given I am a logged in user for "RM3830"

  Scenario: FM - Start a new procurement page - What next page
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    Then the page should be axe clean

  Scenario: FM - Start a new procurement page - Open Services - Maintenance
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    When I click on open all
    And I select all "Maintenance services"
    And I select all "Horticultural services"
    And I select all "Statutory obligations"
    And I select all "Catering services"
    And I select all "Cleaning services"
    And I select all "Workplace FM services"
    And I select all "Reception services"
    And I select all "Security services"
    And I select all "Waste services"
    And I select all "Miscellaneous FM services"
    And I select all "Computer-aided facilities management (CAFM)"
    And I select all "Helpdesk services"
    Then the page should be axe clean

  Scenario: FM - Start a new procurement page - Region 1
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
    Then the page should be axe clean

  Scenario: FM - Start a new procurement page - Search Result
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    Then the page should be axe clean

  Scenario: FM - Start a new procurement page - What next page
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I am on "What happens next" page
    Then the page should be axe clean