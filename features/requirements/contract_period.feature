Feature:  FM - Contract period

  Background: Login page
    Given I am a logged in user
    And I click on start a procurement
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
		And I click on "Contract period"

	Scenario: no validation errors
    When I am on "Contract period" page
    And I enter '2' years and '2' months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2022"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
		When I click on "Save and continue"
    Then I am on "Contract period summary" page

  Scenario: Contract period - no extra periods
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
  
  Scenario: Contract period - with mobilisation period
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "2" years and "0" months for optional extension 2
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 3
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 3
    And I click on add another extension period
    And I enter "5" years and "0" months for optional extension 4
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Change"
    Then I am on "Contract period" page

  Scenario: Contract period - use change link - save new details
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    And I click on "Change"
    And I am on "Contract period" page
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
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
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    When I click on "Return to requirements"
    Then I am on "Requirements" page

  Scenario: Contract period summary - return to requirements
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter the day as "12"
    And I enter the month as "10"
    And I enter the year as "2021"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Return to requirements"
    Then I am on "Requirements" page
