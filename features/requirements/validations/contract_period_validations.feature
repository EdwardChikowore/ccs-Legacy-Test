Feature:  FM - Contract period validations

  Background: Login page
    Given I am a logged in user
    And I click on start a procurement
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page

  Scenario: Validation on save and continue - no information
    When I click on "Contract period"
    And I am on "Contract period" page
    And I click on "Save and continue"
    Then I should see the following error messages
      | Enter the years for the initial call-off period   |
      | Enter the months for the initial call-off period  |
      | Enter a valid initial call-off start date         |
      | Select one option for mobilisation period         |
      | Select one option for call-off contract extension |

  Scenario Outline: Validation on save and continue - initial call off period
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter "<years>" years and "0" months for the contract period
    And I enter values for the initial call-off period date
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error>  |

    Examples:
      | years | error                                                                 |
      |       | Enter the years for the initial call-off period                       |
      | 0     | The total initial call-off period must be between 1 month and 7 years |
      | 8     | The years for the initial call-off period must be between 0 and 7     |
      | 5.7   | The years for the initial call-off period must be a whole number      |

  Scenario Outline: Validation on save and continue - initial call off start date
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter "7" years and "0" months for the contract period
    And I enter the day as "<day>"
    And I enter the month as "<month>"
    And I enter the year as "<year>"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error>  |

    Examples:
      | day | month | year  | error                                                                     |
      |     |       |       | Enter a valid initial call-off start date                                 |
      | 89  | 45    | 0161  | Enter a valid initial call-off start date                                 |
      | 9   | 9     | 2020  | Initial call-off period start date must be today or in the future         |
      | 1   | 1     | 2101  | Initial call-off period start date cannot be later than 31 December 2100  |

  Scenario Outline: Validation on save and continue - mobilisation period - without TUPE
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for "<mobilisation_period>" weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error>  |
    
    Examples:
      | mobilisation_period | error                                               |
      |                     | Enter mobilisation period length                    |
      | 0                   | Mobilisation length must be between 1 and 52 weeks  |
      | 53                  | Mobilisation length must be between 1 and 52 weeks  |
      | 5.7                 | Enter mobilisation length as a whole number         |

  Scenario: Validation on save and continue - mobilisation period required false - with TUPE
    When I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | Mobilisation length must be a minimum of 4 weeks when TUPE is selected |
  
  Scenario: Validation on save and continue - mobilisation period required less than 4 - with TUPE
    When I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 3 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | Mobilisation length must be a minimum of 4 weeks when TUPE is selected |

  Scenario: Validation on save and continue - call-off extensions - no option selected
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on "Save and continue"
    Then I should see the following error messages
      | Select one option for call-off contract extension |

  Scenario Outline: Validation on save and continue - call-off extension 1
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "<years>" years and "0" months for optional extension 1
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error> |

    Examples:
      | years | error                                                         |
      |       | Enter the years for the extension period                      |
      | 0     | The total for extension period 1 must be greater than 1 month |
      | 1.5   | The years for the extension period must be a whole number     |
  
  Scenario Outline: Validation on save and continue - call-off extension 2
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "<years>" years and "0" months for optional extension 2
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error> |

    Examples:
      | years | error                                                         |
      |       | Enter the years for the extension period                      |
      | 0     | The total for extension period 2 must be greater than 1 month |
      | 1.5   | The years for the extension period must be a whole number     |

  Scenario Outline: Validation on save and continue - call-off extension 3
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
    And I click on add another extension period
    And I enter "<years>" years and "0" months for optional extension 3
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error> |

    Examples:
      | years | error                                                         |
      |       | Enter the years for the extension period                      |
      | 0     | The total for extension period 3 must be greater than 1 month |
      | 1.5   | The years for the extension period must be a whole number     |

  Scenario Outline: Validation on save and continue - call-off extension 4
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 3
    And I click on add another extension period
    And I enter "<years>" years and "0" months for optional extension 4
    And I click on "Save and continue"
    Then I should see the following error messages
      | <error> |

    Examples:
      | years | error                                                         |
      |       | Enter the years for the extension period                      |
      | 0     | The total for extension period 4 must be greater than 1 month |
      | 1.5   | The years for the extension period must be a whole number     |

  Scenario: Validation on save and continue - call-off extensions - too long
    When I click on "Contract period"
    And I am on "Contract period" page
    And I enter values for initial call-off period
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_true" option
    And I enter "1" years and "0" months for optional extension 1
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 2
    And I click on add another extension period
    And I enter "1" years and "0" months for optional extension 3
    And I click on add another extension period
    And I enter "5" years and "0" months for optional extension 4
    And I click on "Save and continue"
    Then I should see the following error messages
      | Call-off contract period, including extensions and mobilisation period, must not be more than 10 years in total |