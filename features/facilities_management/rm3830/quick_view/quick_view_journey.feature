Feature: FM - Quick View - Requirements - Services - Service summary

	Background:
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all

  Scenario: FM - Services - Requirements - Service Summary - Content - Services match quick view
    And I check "Fire detection and firefighting systems maintenance"
    And I check "High voltage (HV) and switchgear maintenance"
    And I check "Internal & external building fabric maintenance"
    And I check "Building management system (BMS) maintenance"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    Then I am on "Services summary" page
		And the following summary text is displayed: 
			| 4         |
      | services  |    
    And the following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance        |
			| Internal & external building fabric maintenance     |
			| Building management system (BMS) maintenance        |

	Scenario: FM - Services - Requirements - Service Summary - Content - Number of services has not changed
    And I check "Fire detection and firefighting systems maintenance"
    And I check "High voltage (HV) and switchgear maintenance"
    And I check "Internal & external building fabric maintenance"
    And I check "Building management system (BMS) maintenance"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    When I click on "Change"
    Then I am on the "Select the facilities management services you need" page
    And I should see text "4 services selected" in the selection basket
    And I click on "Save and continue"
    Then I am on the "You have selected" page
		And the following summary text is displayed: 
			| 4         |
      | services  |
    And the following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance        |
			| Internal & external building fabric maintenance     |
			| Building management system (BMS) maintenance        |

	Scenario: FM - Services - Requirements - Service Summary - Services - Select all
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
    And I check "CAFM system"
		And I check "Helpdesk services"
		And I check "Management of billable works"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page    
		And the following summary text is displayed: 
		  | 116       |
      | services  |
    And I click on "Change"
    When I am on the "Select the facilities management services you need" page
    Then I should see text "116 services selected" in the selection basket

	Scenario: FM - Services - Requirements - Service Summary - Services - Remove all error
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
		And I check "CAFM system"
		And I check "Helpdesk services"
		And I check "Management of billable works"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    When I click on "Change"
    And I am on the "Select the facilities management services you need" page
    And I should see text "116 services selected" in the selection basket
    And I click on "Remove all"
    Then I click on "Save and continue"
    Then I should see the following error messages:
      | Select at least one service you need to include in your procurement |

	Scenario: FM - Services - Requirements - Service Summary - Services - Change services
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
    And I check "CAFM system"
		And I check "Helpdesk services"
		And I check "Management of billable works"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    And I click on "Change"
    And I am on the "Select the facilities management services you need" page
    And I should see text "116 services selected" in the selection basket
		And I click on open all
    And I select all "Catering services"
    And I select all "Cleaning services"
    And I select all "Workplace FM services"
    When I click on "Save and continue"
    Then I am on "Services summary" page
    Then the following summary text is displayed: 
		  | 74        |
      | services  |
	
	Scenario: FM - Services - Requirements - Service Summary - return to requirements
    And I check "Fire detection and firefighting systems maintenance"
    And I check "High voltage (HV) and switchgear maintenance"
    And I check "Internal & external building fabric maintenance"
    And I check "Building management system (BMS) maintenance"
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
		And the following summary text is displayed: 
			| 4         |
      | services  |    
    And the following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance        |
			| Internal & external building fabric maintenance     |
			| Building management system (BMS) maintenance        | 
    When I click on "Change"
    Then I am on the "Select the facilities management services you need" page
    And I should see text "4 services selected" in the selection basket
    And I click on "Return to requirements"
    Then I am on the "1. Contract details" page
