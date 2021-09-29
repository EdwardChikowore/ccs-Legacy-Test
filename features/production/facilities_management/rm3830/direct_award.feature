@prod_test
Feature: Direct Award prod test

  Scenario: Direct Award - full scenario
    Given I am a logged in user - buildings account - for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    When I select all da services
    And I click on "Continue"
    And I click on open all
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I add contract name
    And I click on "Save and continue to procurement"
    And I click on "Continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    And I select "No" for estimated annual cost known
    And I click on "Save and return"
    And I click on "TUPE"
    And I am on "TUPE" page
    And I select "Yes" for TUPE required
    And I click on "Save and return"
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "1" years and "7" months for the contract period
    And I enter an inital call-off period start date 1 years and 0 months into the future
    And I select "Yes" for mobilisation period required
    And I enter "4" weeks for the mobilisation period
    And I select "No" for optional extension required
    And I click on "Save and continue"
    And I click on "Return to requirements"
    And I click on "Building"
    And I find and select the following buildings:
      | 001 DA & FC Building  |
      | 002 DA & FC Building  |
      | 003 DA & FC Building  |
      | 004 DA & FC Building  |
      | 005 DA & FC Building  |
      | 006 DA & FC Building  |
      | 007 DA & FC Building  |
      | 008 DA & FC Building  |
      | 009 DA & FC Building  |
      | 010 DA & FC Building  |
      | 011 DA & FC Building  |
      | 012 DA & FC Building  |
    And I click on "Save and continue"
    And I am on "Buildings summary" page
    And I click on "Return to requirements"
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    And I select the services for the following buildings:
      | 001 DA & FC Building  |
      | 002 DA & FC Building  |
      | 003 DA & FC Building  |
      | 004 DA & FC Building  |
      | 005 DA & FC Building  |
      | 006 DA & FC Building  |
      | 007 DA & FC Building  |
      | 008 DA & FC Building  |
      | 009 DA & FC Building  |
      | 010 DA & FC Building  |
      | 011 DA & FC Building  |
      | 012 DA & FC Building  |
    And I am on "Assigning services to buildings summary" page
    And I click on "Return to requirements"
    And I am on "Requirements" page
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I answer the service questions for the following buildings:
      | 001 DA & FC Building  |
      | 002 DA & FC Building  |
      | 003 DA & FC Building  |
      | 005 DA & FC Building  |
      | 006 DA & FC Building  |
      | 007 DA & FC Building  |
      | 008 DA & FC Building  |
      | 009 DA & FC Building  |
      | 010 DA & FC Building  |
      | 011 DA & FC Building  |
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I answer the "Payment method" contract detail question
    And I am on "Payment method" page
    And I pick "BACS payment" for the payment method
    And I click on "Save and return"
    And I answer the "Invoicing contact details" contract detail question
    And I am on "Invoicing contact details" page
    And I select the buyer details for the contact details
    And I click on "Continue"
    And I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    And I select the buyer details for the contact details
    And I click on "Continue"
    And I answer the "Notices contact details" contract detail question
    And I am on "Notices contact details" page
    And I select the buyer details for the contact details
    And I click on "Continue"
    And I answer the "Security policy" contract detail question
    And I am on "Security policy document" page
    And I select "No" for the security policy document question
    And I click on "Save and return"
    And I answer the "Local Government Pension Scheme" contract detail question
    And I am on "Local Government Pension Scheme" page
    And I select "No" for the LGPS question
    And I click on "Save and continue"
    And I answer the "Governing law" contract detail question
    And I am on "Governing law" page
    And I pick "English Law" for the governing law
    And I click on "Save and continue"
    And I am on "Contract details" page
    And I click on "Continue"
    And I am on "Review and generate documents" page
    And I click on "Generate documents"
    And I am on "Review your contract" page
