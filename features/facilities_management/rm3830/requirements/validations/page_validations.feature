Feature: Requirements validations

  Background: Login page
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    And I click on "Start a procurement"
    Then I am on "What happens next" page
    And I click on "Continue"
    Then I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page


  Scenario: Validation errors when continuing to results
    And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
    And I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |


  Scenario: Validation errors after estimated annual cost and continuing to results
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Estimated annual cost' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |


  Scenario: Validation errors after TUPE and continuing to results
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
		And 'TUPE' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |


  Scenario: Validation errors after Contract period and continuing to results
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And 'Contract period' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |
	

	Scenario: Validation errors after Contract period with TUPE and continuing to results
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Estimated annual cost' should have the status 'NOT STARTED' in 'Contract details'
		And 'TUPE' should have the status 'COMPLETED' in 'Contract details'
		And 'Contract period' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’                                   |
      | Mobilisation period length must be a minimum of 4 weeks when TUPE is selected |
      | ‘Services’ must be ‘COMPLETED’                                                |
      | ‘Buildings’ must be ‘COMPLETED’                                               |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’                         |
      | ‘Service requirements’ must be ‘COMPLETED’                                    |
	

	Scenario: Validation errors after Contract period with no TUPE and continuing to results
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "No" for TUPE required
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Estimated annual cost' should have the status 'NOT STARTED' in 'Contract details'
		And 'TUPE' should have the status 'COMPLETED' in 'Contract details'
		And 'Contract period' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |

	
	Scenario: Validation errors after section 1 complete and continuing to results
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "No" for TUPE required
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Estimated annual cost' should have the status 'COMPLETED' in 'Contract details'
		And 'TUPE' should have the status 'COMPLETED' in 'Contract details'
		And 'Contract period' should have the status 'COMPLETED' in 'Contract details'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Services’ must be ‘COMPLETED’                        |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |


	Scenario: Validation errors after services and continuing to requirements
		And I click on "Services"
		And I am on "Services" page
		When I click on "Save and continue"
		Then I should see the following error messages:
		  | Select at least one service you need to include in your procurement |


	Scenario: Validation errors after services and continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
    When I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed:
			| 2         |
      | services  |
    And I click on "Return to requirements"
		And 'Services' should have the status 'COMPLETED' in 'Services and buildings'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Buildings’ must be ‘COMPLETED’                       |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |


	Scenario: Validation errors after services and buildings and then continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
    When I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed: 
			| 2         |
      | services  |
    And I click on "Return to requirements"
    When I click on "Buildings"
    And I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Services' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Buildings' should have the status 'COMPLETED' in 'Services and buildings'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Assigning services to buildings’ must be ‘COMPLETED’ |
      | ‘Service requirements’ must be ‘COMPLETED’            |

	
	Scenario: Validation errors after services, buildings and assigning services to buildings then continuing to results
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
    When I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed: 
			| 2         |
      | services  |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 1         |
      | building  |
    And I click on "Return to requirements"
    When I click on "Assigning services to buildings"
    And I click on the first building
  	And I click on select all
    And I click on "Save and return"
    And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Buildings' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Services' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Assigning services to buildings' should have the status 'COMPLETED' in 'Services and buildings'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |
      | ‘Service requirements’ must be ‘COMPLETED’            |

	
	Scenario: Service requirements standards error
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
    And I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed: 
			| 2         |
      | services  |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 1         |
      | building  |
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
    And I click on "Answer question"
    And I am on the "Internal & external building fabric maintenance" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | Select the level of standard  |
	

	Scenario: Service requirements standards errors
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
		When I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed: 
			| 2         |
      | services  |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 1         |
      | building  |
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
    And I click on "Answer question"
    And I am on the "Internal & external building fabric maintenance" page
    When I select standard "A"
    And I click on "Save and return" 
		And I click on "Answer question"
    And I am on the "High voltage (HV) and switchgear maintenance" page
    When I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
		And I click on "Return to service requirements summary"
		And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Buildings' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Services' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Assigning services to buildings' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Service requirements' should have the status 'COMPLETED' in 'Services and buildings'
    When I click on "Continue to results"
    Then I should see the following error messages:
      | ‘Estimated annual cost’ must be ‘COMPLETED’           |
      | ‘TUPE’ must be ‘COMPLETED’                            |
      | ‘Contract period’ must be ‘COMPLETED’                 |


	Scenario: no errors		
		And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "No" for TUPE required
    And I click on "Save and return"
		And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
		And I click on "Services"
		And I am on "Services" page
    And I click on show all sections
		And I check "High voltage (HV) and switchgear maintenance"
		And I check "Internal & external building fabric maintenance"
		And I click on "Save and continue"
		Then I am on "Services summary" page   
		And the following summary text is displayed: 
			| 2         |
      | services  |
    And I click on "Return to requirements"
    When I click on "Buildings"
    Then I am on "Buildings" page
    When I select building 1
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And the following building summary text is displayed:
      | 1         |
      | building  |
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
    And I click on "Answer question"
    And I am on the "Internal & external building fabric maintenance" page
    When I select standard "A"
    And I click on "Save and return" 
		And I click on "Answer question"
    And I am on the "High voltage (HV) and switchgear maintenance" page
    When I select standard "A"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on "Return to service requirements summary"
		And I click on "Return to requirements"
		And 'Contract name' should have the status 'COMPLETED' in 'Contract details'
		And 'Estimated annual cost' should have the status 'COMPLETED' in 'Contract details'
		And 'TUPE' should have the status 'COMPLETED' in 'Contract details'
		And 'Contract period' should have the status 'COMPLETED' in 'Contract details'
		And 'Buildings' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Services' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Assigning services to buildings' should have the status 'COMPLETED' in 'Services and buildings'
		And 'Service requirements' should have the status 'COMPLETED' in 'Services and buildings'
    When I click on "Continue to results"
		Then I am on "Results" page
