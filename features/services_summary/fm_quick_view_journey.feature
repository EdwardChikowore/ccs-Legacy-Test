Feature: FM - Quick View - Requirements - Services - Service summary

	Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all

  Scenario: FM - Services - Requirements - Service Summary - Content - Services match quick view
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
    And I click on "Continue"
    And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"

    And I am on "Requirements" page
    And I click on "Services"
    Then I am on "Services summary" page
		And The following summary text is displayed: 
			| 4 services |    
    And The following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance |
			| Internal & external building fabric maintenance |
			| Building management system (BMS) maintenance | 

	
	Scenario: FM - Services - Requirements - Service Summary - Content - Number of services has not changed
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
    And I click on "Continue"
      And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"

    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    When I click on "Change"
    Then I am on the "Select the facilities management services you need" page
    And I should see text "4 services selected" in the service selection basket
    And I click on save and continue
    Then I am on the "You have selected" page
		And The following summary text is displayed: 
			| 4 services |    
    And The following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance |
			| Internal & external building fabric maintenance |
			| Building management system (BMS) maintenance | 

	Scenario: FM - Services - Requirements - Service Summary - Services - Select all
    And I select all maintenance services
    And I select all horticultural services
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    And I select all reception services
    And I select all security services
    And I select all waste services
    And I select all miscellaneous services
    And I click on the "CAFM system"
		And I click on the "Helpdesk services"
		And I click on the "Management of billable works"
    And I click on "Continue"
      And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page    
		And The following summary text is displayed: 
		| 116 services |
    And I click on "Change"
    When I am on the "Select the facilities management services you need" page
    Then I should see text "116 services selected" in the service selection basket

	Scenario: FM - Services - Requirements - Service Summary - Services - Remove all error
    And I select all maintenance services
    And I select all horticultural services
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    And I select all reception services
    And I select all security services
    And I select all waste services
    And I select all miscellaneous services
		And I click on the "CAFM system"
		And I click on the "Helpdesk services"
		And I click on the "Management of billable works"
    And I click on "Continue"
      And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    When I click on "Change"
    And I am on the "Select the facilities management services you need" page
    And I should see text "116 services selected" in the service selection basket
    And I click on "Remove all"
    Then I click on save and continue
    Then I should see the following error messages
      | Select at least one service you need to include in your procurement |

	Scenario: FM - Services - Requirements - Service Summary - Services - Change services
    And I select all maintenance services
    And I select all horticultural services
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    And I select all reception services
    And I select all security services
    And I select all waste services
    And I select all miscellaneous services
    And I click on the "CAFM system"
		And I click on the "Helpdesk services"
		And I click on the "Management of billable works"
    And I click on "Continue"
      And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
    And I click on "Change"
    And I am on the "Select the facilities management services you need" page
    And I should see text "116 services selected" in the service selection basket
		And I click on open all
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    When I click on save and continue
    Then I am on "Services summary" page
    Then The following summary text is displayed: 
		| 74 services |
	
	Scenario: FM - Services - Requirements - Service Summary - return to requirements
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
    And I click on "Continue"
      And I click on open all
    And I click on Tees Valley and Durham
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Services"
    And I am on "Services summary" page
		And The following summary text is displayed: 
			| 4 services |    
    And The following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance |
			| Internal & external building fabric maintenance |
			| Building management system (BMS) maintenance | 
    When I click on "Change"
    Then I am on the "Select the facilities management services you need" page
    And I should see text "4 services selected" in the service selection basket
    And I click on return to requirements
    Then I am on the "1. Contract details" page
