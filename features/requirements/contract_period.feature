Feature: Contract period

	Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"
    And I am on "Requirements" page
		And I click on "Contract period"
    And I am on "Contract period" page
	
	Scenario: Contract period - validation
		When I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Enter initial call-off period |
		| Enter a valid initial call-off start date |
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |

	Scenario: Call off period - validation
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
		And I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |

	Scenario: Call off period - validation - in the past
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2020"
		And I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Initial call-off period start date must be today or in the future |
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |
	
	Scenario: Call off period and Mobilisation period - validation
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Enter mobilisation period length |
		| Select one option for call-off contract extension |

	Scenario: Call off period and Mobilisation period - validation
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
		When I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Select one option for call-off contract extension |
	
	Scenario: Extension period - validation
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Select one option for call-off contract extension |
	
	Scenario: Extension period - validation - missing 
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| There is a problem |
		| Enter extension period |

	Scenario: no validation errors
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
		When I click on "Save and continue"
		Then I am on the "Contract period" page