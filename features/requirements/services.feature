Feature:Services
  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on start a procurement
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
		And I click on "Services"
    And I am on "Services" page
    And I click on open all

  Scenario: Validation error when no service is selected
		And I click on "Save and continue"
		Then I should see the following error messages
		|Select at least one service you need to include in your procurement|

  Scenario: Change service selection
		And I click on the "Building management system (BMS) maintenance"
    And I click on "Save and continue"
    And I am on "Services summary" page		
		And The following summary text is displayed: 
			| 1 service |    
    When I click on "Change"
    And I am on "Services" page
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
		When I click on save and continue
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 3 services | 

  Scenario: Navigate to services summary page
		And I click on the "Building management system (BMS) maintenance"
		And I click on "Save and continue"
		Then I am on "Services summary" page
		And The following summary text is displayed: 
			| 1 service |

  Scenario: Navigate to requirements page
    And I click on "Return to requirements"
    Then I am on "Requirements" page