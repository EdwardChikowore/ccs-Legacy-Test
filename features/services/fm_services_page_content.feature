Feature:  Facilities Management - Services - Page Content

	Background:
		Given I am a logged in user
		Then I should see the navigation panel has sign out link
   
	Scenario: FM - Services - Page Header - Content
		When I click on "Quick view suppliers"
		And I am on the "Select the facilities management services that you need" page
		And I click on close all on services page
		Then The service caption text is displayed

	Scenario: FM - Services - Error Message
		When I click on "Quick view suppliers"
		And I am on the "Select the facilities management services that you need" page
		When I click on "Continue"
		Then I should see the following error messages
			| Select at least one service you need to include in your procurement |

	Scenario: Start a procurement - Services - Content
		And I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
		When I click on "Services"
    Then I am on "Services" page
		Then The service caption is displayed

	Scenario: FM - Services - Error Message
		And I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
		When I click on "Services"
    Then I am on "Services" page
		When I click on "Save and continue"
		Then I should see the following error messages
			| Select at least one service you need to include in your procurement |
