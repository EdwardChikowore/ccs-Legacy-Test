Feature:  FM - Contract period

  Background: Login page
    Given I am a logged in user for "RM3830"
    And I click on "Start a procurement"
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
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
		When I click on "Save and continue"
    Then I am on "Contract period summary" page

  Scenario: Contract period - no extra periods
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
  
  Scenario: Contract period - with mobilisation period
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And there are no optional call off extensions


  Scenario: Contract period - with 1 extension period
    When I am on "Contract period" page
    And I enter '1' years and '3' months for the contract period
    And I enter an inital call-off period start date 2 years and 3 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year and 3 months'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And the length of extension period 1 is '1 year'
    And extension period 1 is correct given the contract start date


  Scenario: Contract period - with 2 extension periods
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I add another extension
    And I enter "2" years and "0" months for optional extension 2
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And the length of extension period 1 is '1 year'
    And extension period 1 is correct given the contract start date
    And the length of extension period 2 is '2 years'
    And extension period 2 is correct given the contract start date


  Scenario: Contract period - with 3 extension periods
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I add another extension
    And I enter "1" years and "0" months for optional extension 2
    And I add another extension
    And I enter "2" years and "3" months for optional extension 3
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And the length of extension period 1 is '1 year'
    And extension period 1 is correct given the contract start date
    And the length of extension period 2 is '1 year'
    And extension period 2 is correct given the contract start date
    And the length of extension period 3 is '2 years and 3 months'
    And extension period 3 is correct given the contract start date

  
  Scenario: Contract period - with 4 extension periods
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I add another extension
    And I enter "1" years and "0" months for optional extension 2
    And I add another extension
    And I enter "1" years and "0" months for optional extension 3
    And I add another extension
    And I enter "5" years and "0" months for optional extension 4
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And the length of extension period 1 is '1 year'
    And extension period 1 is correct given the contract start date
    And the length of extension period 2 is '1 year'
    And extension period 2 is correct given the contract start date
    And the length of extension period 3 is '1 year'
    And extension period 3 is correct given the contract start date
    And the length of extension period 4 is '5 years'
    And extension period 4 is correct given the contract start date


  Scenario: Contract period - use change link
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Change"
    Then I am on "Contract period" page


  Scenario: Contract period - use change link - save new details
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    And I click on "Change"
    And I am on "Contract period" page
    And I add another extension
    And I enter "1" years and "0" months for optional extension 2
    When I click on "Save and continue"
    Then I am on "Contract period summary" page
    And my inital call off period length is '1 year'
    And my inital call off period is correct given the contract start date
    And mobilisation period length is '4 weeks'
    And the mobilisation period is correct given the contract start date
    And the length of extension period 1 is '1 year'
    And extension period 1 is correct given the contract start date
    And the length of extension period 2 is '1 year'
    And extension period 2 is correct given the contract start date


  Scenario: Contract period - return to requirements
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    When I click on "Return to requirements"
    Then I am on "Requirements" page


  Scenario: Contract period summary - return to requirements
    When I am on "Contract period" page
    And I enter '1' years and '0' months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "Yes" for optional extension required
    And I enter "1" years and "0" months for optional extension 1
    And I click on "Save and continue"
    And I am on "Contract period summary" page
    When I click on "Return to requirements"
    Then I am on "Requirements" page
