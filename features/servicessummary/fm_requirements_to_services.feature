Feature:  Facilities Management - Services - Requirements - Services - Service Summary - Services

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    
  Scenario: FM - Services - Requirements - Service Summary - Content - Save and Continue
    And I click on open all
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
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
    When I click on "Change"
    Then I am on the "Select the facilities management services you need" page
    And I should see text "4 services selected"
    And I click on "Save and continue"
    Then I am on the "You have selected" page    
    And The following detail is displayed:
        | Fire detection and firefighting systems maintenance |
        | High voltage (HV) and switchgear maintenance |
        | Internal & external building fabric maintenance |
        | Building management system (BMS) maintenance | 
