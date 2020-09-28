Feature:  FM - Contract period

  Background: Login page
    Given I am a logged in user
    When I click on "Start a procurement"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and return"
    And I am on "Requirements" page
		And I click on "Contract period"
	
	Scenario: Contract period - validation
    When I am on "Contract period" page
		When I click on "Save and continue"
		Then I should see the following error messages
		| Enter initial call-off period |
		| Enter a valid initial call-off start date |
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |

	Scenario: Call off period - validation
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
		And I click on "Save and continue"
		Then I should see the following error messages
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |

	Scenario: Call off period - validation - in the past
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2020"
		And I click on "Save and continue"
		Then I should see the following error messages
		| Initial call-off period start date must be today or in the future |
		| Select one option for mobilisation period |
		| Select one option for call-off contract extension |
	
	Scenario: Call off period and Mobilisation period - validation
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| Enter mobilisation period length |
		| Select one option for call-off contract extension |

	Scenario: Call off period and Mobilisation period - validation
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
		When I click on "Save and continue"
		Then I should see the following error messages
		| Select one option for call-off contract extension |
	
	Scenario: Extension period - validation
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| Enter mobilisation period length |
		| Select one option for call-off contract extension |
	
	Scenario: Extension period - validation - missing 
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
		When I click on "Save and continue"
		Then I should see the following error messages
		| Enter mobilisation period length |
		| Enter extension period |

	Scenario: no validation errors
    When I am on "Contract period" page
    And I enter the number of year as "2"
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
		When I click on "Save and continue"
		Then I am on the "Contract period summary" page

  Scenario: Contract period - no extra periods
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
  
  Scenario: Contract period - with mobilisation period
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off extension is displayed:
    | None |


  Scenario: Contract period - with 1 extension period
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off length 1 is displayed:
    | 1 year |
    And The following call-off length 1 description is displayed:
    | 12 October 2022 to 11 October 2023 |

  Scenario: Contract period - with 2 extension periods
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on add another extension period
    And I enter 2 year for extension period 2
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off length 1 is displayed:
    | 1 year |
    And The following call-off length 1 description is displayed:
    | 12 October 2022 to 11 October 2023 |
    And The following call-off length 2 is displayed:
    | 2 years |
    And The following call-off length 2 description is displayed:
    | 12 October 2023 to 11 October 2025 |

  Scenario: Contract period - with 3 extension periods
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on add another extension period
    And I enter 1 year for extension period 2
    And I click on add another extension period
    And I enter 1 year for extension period 3
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off length 1 is displayed:
    | 1 year |
    And The following call-off length 1 description is displayed:
    | 12 October 2022 to 11 October 2023 |
    And The following call-off length 2 is displayed:
    | 1 year |
    And The following call-off length 2 description is displayed:
    | 12 October 2023 to 11 October 2024 |
    And The following call-off length 3 is displayed:
    | 1 year |
    And The following call-off length 3 description is displayed:
    | 12 October 2024 to 11 October 2025 |
  
  Scenario: Contract period - with 4 extension periods
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on add another extension period
    And I enter 1 year for extension period 2
    And I click on add another extension period
    And I enter 1 year for extension period 3
    And I click on add another extension period
    And I enter 5 year for extension period 4
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off length 1 is displayed:
    | 1 year |
    And The following call-off length 1 description is displayed:
    | 12 October 2022 to 11 October 2023 |
    And The following call-off length 2 is displayed:
    | 1 year |
    And The following call-off length 2 description is displayed:
    | 12 October 2023 to 11 October 2024 |
    And The following call-off length 3 is displayed:
    | 1 year |
    And The following call-off length 3 description is displayed:
    | 12 October 2024 to 11 October 2025 |
    And The following call-off length 4 is displayed:
    | 5 years |
    And The following call-off length 4 description is displayed:
    | 12 October 2025 to 11 October 2030 |

  Scenario: Contract period - use change link
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Change"
    Then I am on "Contract period" page

  Scenario: Contract period - use change link - save new details
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    And I click on "Change"
    And I am on "Contract period" page
    And I click on add another extension period
    And I enter 1 year for extension period 2
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And The following contract period is displayed: 
    | 1 year |
    And The following contract period description is displayed: 
    | 12 October 2021 to 11 October 2022 |
    And The following mobilisation length is displayed:
    | 4 weeks |
    And The following mobilisation description is displayed:
    | 13 September 2021 to 11 October 2021 |
    And The following call-off length 1 is displayed:
    | 1 year |
    And The following call-off length 1 description is displayed:
    | 12 October 2022 to 11 October 2023 |
    And The following call-off length 2 is displayed:
    | 1 year |
    And The following call-off length 2 description is displayed:
    | 12 October 2023 to 11 October 2024 |

  Scenario: Contract period - return to requirements
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    When I click on "Return to requirements"
    Then I am on "Requirements" page

  Scenario: Contract period summary - return to requirements
    When I am on "Contract period" page
    And I enter the number of year as "1"
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter 1 year for extension period 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Return to requirements"
    Then I am on "Requirements" page
