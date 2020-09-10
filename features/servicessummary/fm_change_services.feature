Feature:  Facilities Management - Services - Requirements - Services - Service Summary

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page

  Scenario: FM - Services - Requirements - Service Summary - Services - Change services
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
    And I click on "North East (England)"
    And I click on the "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"

    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    And I click on "Change"
    And I am on the "Select the facilities management services you need" page
    And I should see text "116 services selected"
    And I click on "Statutory obligations"
    And I select all statutory services
    And I click on "Catering services"
    And I select all catering services
    And I click on "Cleaning services"
    And I select all cleaning services
    And I click on "Workplace FM services"
    And I select all workplace services
    When I click on "Continue"
    Then I am on "Services summary" page
    Then I should see text "You have selected 95 services"
    
