Feature: Requirements validations

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

  Scenario: Validation errors when continuing to results
    And The contract name status tag is "COMPLETED"
    And I click on "Continue to results"
    Then I should see the following error messages
        |‘Estimated annual cost’ must be ‘COMPLETED’|
		|‘TUPE’ must be ‘COMPLETED’|
		|‘Contract period’ must be ‘COMPLETED’|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|

  Scenario: Validation errors after estimated annual cost and continuing to results
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
		And The contract name status tag is "COMPLETED"
		And The estimated annual cost status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
		|‘TUPE’ must be ‘COMPLETED’|
		|‘Contract period’ must be ‘COMPLETED’|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|

  Scenario: Validation errors after TUPE and continuing to results
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
		And The TUPE status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
    |‘Estimated annual cost’ must be ‘COMPLETED’|
		|‘Contract period’ must be ‘COMPLETED’|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|

  Scenario: Validation errors after Contract period and continuing to results
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2024"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And The contract period status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
    |‘Estimated annual cost’ must be ‘COMPLETED’|
		|‘TUPE’ must be ‘COMPLETED’|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Validation errors after Contract period with TUPE and continuing to results
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2024"
    And I click on the "facilities_management_procurement_mobilisation_period_required_false" option
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_true" option
    And I click on "Save and return"
		And The contract name status tag is "COMPLETED"
		And The estimated annual cost status tag is "NOT STARTED"
		And The TUPE status tag is "COMPLETED"
		And The contract period status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
    |‘Estimated annual cost’ must be ‘COMPLETED’|
		|Mobilisation period length must be a minimum of 4 weeks when TUPE is selected|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Validation errors after Contract period with no TUPE and continuing to results
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2024"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The estimated annual cost status tag is "NOT STARTED"
		And The TUPE status tag is "COMPLETED"
		And The contract period status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
    |‘Estimated annual cost’ must be ‘COMPLETED’|
		|‘Services’ must be ‘COMPLETED’|
		|‘Buildings’ must be ‘COMPLETED’|
		|‘Assigning services to buildings’ must be ‘COMPLETED’|
		|‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Validation errors after section 1 complete and continuing to results
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2024"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The estimated annual cost status tag is "COMPLETED"
		And The TUPE status tag is "COMPLETED"
		And The contract period status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
      |‘Services’ must be ‘COMPLETED’|
      |‘Buildings’ must be ‘COMPLETED’|
      |‘Assigning services to buildings’ must be ‘COMPLETED’|
      |‘Service requirements’ must be ‘COMPLETED’|

	Scenario: Validation errors after services and continuing to requirements
		And I click on "Services"
		And I am on "Services" page
		When I click on "Save and continue"
		Then I should see the following error messages
		|Select at least one service you need to include in your procurement|

	Scenario: Validation errors after services and continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
      When I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed:
			| 2 services |
    And I click on "Return to requirements"
		And The services status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
      |‘Estimated annual cost’ must be ‘COMPLETED’|
      |‘TUPE’ must be ‘COMPLETED’|
      |‘Contract period’ must be ‘COMPLETED’|
      |‘Buildings’ must be ‘COMPLETED’|
      |‘Assigning services to buildings’ must be ‘COMPLETED’|
      |‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Validation errors after services and buildings and then continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
      When I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 2 services |
    And I click on "Return to requirements"
    When I click on "Buildings"
    And I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The services status tag is "COMPLETED"
		And The buildings status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
      |‘Estimated annual cost’ must be ‘COMPLETED’|
      |‘TUPE’ must be ‘COMPLETED’|
      |‘Contract period’ must be ‘COMPLETED’|
      |‘Assigning services to buildings’ must be ‘COMPLETED’|
      |‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Validation errors after services, buildings and assigning services to buildings then continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
      When I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 2 services |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
      And The following building summary text is displayed:
        | 1 building |
    And I click on "Return to requirements"
      When I click on "Assigning services to buildings"
      And I click on the first building
  	And I click on select all
      And I click on "Save and return"
      And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The buildings status tag is "COMPLETED"
		And The services status tag is "COMPLETED"
		And The assigning services to buildings status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
      |‘Estimated annual cost’ must be ‘COMPLETED’|
      |‘TUPE’ must be ‘COMPLETED’|
      |‘Contract period’ must be ‘COMPLETED’|
      |‘Service requirements’ must be ‘COMPLETED’|
	
	Scenario: Service requirements standards error
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
      And I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 2 services |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
      And The following building summary text is displayed:
        | 1 building |
    And I click on "Return to requirements"
      When I click on "Assigning services to buildings"
    And I click on the first building
  	And I click on select all
  	And I click on "Save and return"
  	And I click on "Return to requirements"
    When I am on the "1. Contract details" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building
    And I click on Answer question
    And I am on the "Internal & external building fabric maintenance" page
    When I click on "Save and return"
    Then I should see the following error messages
      |Select the level of standard|
	
	Scenario: Service requirements standards errors
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
		When I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 2 services |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
      And The following building summary text is displayed:
        | 1 building |
    And I click on "Return to requirements"
      When I click on "Assigning services to buildings"
      And I click on the first building
  	And I click on select all
      And I click on "Save and return"
      And I click on "Return to requirements"
    When I am on the "1. Contract details" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building
    And I click on Answer question
    And I am on the "Internal & external building fabric maintenance" page
    When I select standard A
    And I click on "Save and return" 
		And I click on Answer question
    And I am on the "High voltage (HV) and switchgear maintenance" page
    When I select standard A
    And I click on "Save and return"
    Then I am on the "Service requirements" page
		And I click on "Return to service requirements summary"
		And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The buildings status tag is "COMPLETED"
		And The services status tag is "COMPLETED"
		And The assigning buildings to services status tag is "COMPLETED"
		And The service requirements status tag is "COMPLETED"
    When I click on "Continue to results"
    Then I should see the following error messages
      |‘Estimated annual cost’ must be ‘COMPLETED’|
      |‘TUPE’ must be ‘COMPLETED’|
      |‘Contract period’ must be ‘COMPLETED’|

	Scenario: no errors		
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I click on the "facilities_management_procurement_estimated_cost_known_false" option
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I click on the "facilities_management_procurement_tupe_false" option
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter the day as "2"
    And I enter the month as "2"
    And I enter the year as "2024"
    And I click on the "facilities_management_procurement_mobilisation_period_required_true" option
    And I enter the mobilisation period for 4 weeks
    And I click on the "facilities_management_procurement_extensions_required_false" option
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And I click on "Services"
		And I am on "Services" page
    And I click on open all
		And I click on the "High voltage (HV) and switchgear maintenance"
		And I click on the "Internal & external building fabric maintenance"
		And I click on "Save and continue"
		Then I am on "Services summary" page   
		And The following summary text is displayed: 
			| 2 services |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select first building
    And I click on "Save and continue"
    And I am on "Buildings summary" page
      And The following building summary text is displayed:
        | 1 building |
    And I click on "Return to requirements"
      When I click on "Assigning services to buildings"
      And I click on the first building
  	And I click on select all
      And I click on "Save and return"
      And I click on "Return to requirements"
    When I am on the "1. Contract details" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building
    And I click on Answer question
    And I am on the "Internal & external building fabric maintenance" page
    When I select standard A
    And I click on "Save and return" 
		And I click on Answer question
    And I am on the "High voltage (HV) and switchgear maintenance" page
    When I select standard A
    And I click on "Save and return"
    Then I am on the "Service requirements" page
      And I click on "Return to service requirements summary"
		And I click on "Return to requirements"
		And The contract name status tag is "COMPLETED"
		And The estimated annual cost status tag is "COMPLETED"
		And The TUPE status tag is "COMPLETED"
		And The contract period status tag is "COMPLETED"
		And The buildings status tag is "COMPLETED"
		And The services status tag is "COMPLETED"
		And The assigning buildings to services status tag is "COMPLETED"
		And The service requirements status tag is "COMPLETED"
    When I click on "Continue to results"
		Then I am on "Results" page