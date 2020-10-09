Feature: Requirements - section 1

	Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page

  Scenario: Estimated annual cost - saving
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    When I click on "Save and return"
		Then I am on "Requirements" page
	
	Scenario: Adding estimated annual cost - error validation
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    When I click on "Save and return"
    Then I should see the following error messages
    |Select one option|
	
	Scenario: Adding estimated annual cost - return to requirements
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    When I click on "Return to requirements"
		Then I am on "Requirements" page

	Scenario: TUPE - saving
		And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    When I click on "Save and return"
		Then I am on "Requirements" page

	Scenario: TUPE - validation
		And I click on "TUPE"
    And I am on "TUPE" page
    When I click on "Save and return"
    Then I should see the following error messages
    |Select one option|
	
	Scenario: TUPE - return to requirements
		And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    When I click on "Return to requirements"
		Then I am on "Requirements" page