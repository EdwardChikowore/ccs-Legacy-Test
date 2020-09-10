Feature:  Facilities Management - Services - Requirements - Services - Service Summary

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link

Scenario: FM - Start a procurement - Requirements - Service Summary - Services - Select all
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"
    And I am on "Requirements" page

    And I click on "Services"
    And I am on "Services" page
    And I click on "Maintenance services"
    And I select all maintenance services
    And I click on "Horticultural services"
    And I select all horticultural services
    And I click on "Statutory obligations"
    And I select all statutory services
    And I click on "Catering services"
    And I select all catering services
    And I click on "Cleaning services"
    And I select all cleaning services
    And I click on "Workplace FM services"
    And I select all workplace services
    And I click on "Reception services"
    And I select all reception services
    And I click on "Security services"
    And I select all security services
    And I click on "Waste services"
    And I select all waste services
    And I click on "Miscellaneous FM services"
    And I select all miscellaneous services
    And I click on "Management of billable works"
    And I select all services listed for Management of billable works
    And I click on "Computer-aided facilities management (CAFM)"
    And I select all cafm service
    And I click on "Helpdesk services"
    And I select all helpdesk services
    And I click on "Continue"
    Then I should see text "116 services selected"