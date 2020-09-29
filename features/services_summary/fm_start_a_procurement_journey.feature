Feature:  Facilities Management - Start a procurement - Requirements - Services - Service Summary

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
		And I click on "Services"
    And I am on "Services" page

	Scenario: FM - Start a procurement - Requirements - Service Summary - Services - Remove all error
    And I click on open all
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
    And I click on save and continue
		And The following summary text is displayed: 
			| 116 services |    
    And I click on "Change"
    And I click on "Remove all"
    Then I click on save and continue
    Then I should see the following error messages
      | Select at least one service you need to include in your procurement |

	Scenario: FM - Services - Requirements - Service Summary - Services - Change services
    And I click on open all
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
    And I click on save and continue
		And The following summary text is displayed: 
			| 116 services |
		And I click on "Change"
    And I select all statutory services
    And I select all catering services
    And I select all cleaning services
    And I select all workplace services
    When I click on save and continue
    Then I am on "Services summary" page
		And The following summary text is displayed: 
			| 65 services |    

	Scenario: Requirements - Service Summary - Content - Number of services
    And I click on open all
    And I click on the "Fire detection and firefighting systems maintenance"
    And I click on the "High voltage (HV) and switchgear maintenance"
    And I click on the "Internal & external building fabric maintenance"
    And I click on the "Building management system (BMS) maintenance"
		When I click on save and continue
    Then I am on "Services summary" page 
		And The following summary text is displayed: 
			| 4 services |
    And The following detail is displayed:
			| Fire detection and firefighting systems maintenance |
			| High voltage (HV) and switchgear maintenance |
			| Internal & external building fabric maintenance |
			| Building management system (BMS) maintenance | 


	Scenario: Requirements - Service Summary - Content - Number of services has not changed
		And I click on open all
		And I click on the "Fire detection and firefighting systems maintenance"
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
		And I click on the "Building management system (BMS) maintenance"
		When I click on save and continue
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 4 services | 
		When I click on "Change"
		Then I am on the "Select the facilities management services you need" page
		And I should see text "4 services selected"
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
    And I click on open all
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
    When I click on save and continue
    Then I am on "Services summary" page
		And The following summary text is displayed: 
			| 116 services | 

	Scenario: Requirements - Service Summary - Content - Number of services has not changed
		And I click on open all
		And I click on the "Fire detection and firefighting systems maintenance"
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
		And I click on the "Building management system (BMS) maintenance"
		When I click on save and continue
		Then I am on "Services summary" page
		And The following summary text is displayed: 
			| 4 services | 
		When I click on "Change"
		Then I am on the "Select the facilities management services you need" page
		And I should see text "4 services selected"
		When I click on return to requirements
		Then I am on the "1. Contract details" page   