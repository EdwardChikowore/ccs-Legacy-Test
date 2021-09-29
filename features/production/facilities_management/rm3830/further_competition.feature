@prod_test
Feature: Further Competition prod test

  Scenario: Further Competition - full scenario
    Given I am a logged in user - buildings account - for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select all services
    And I click on "Continue"
    And I click on open all
    And I select all regions
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
    And I enter "1" years and "0" months for the contract period
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
      | 13 FC Building        |
      | 14 FC Building        |
      | 15 FC Building        |
      | 16 FC Building        |
      | 17 FC Building        |
      | 18 FC Building        |
      | 19 FC Building        |
      | 20 FC Building        |
      | 21 FC Building        |
      | 22 FC Building        |
      | 23 FC Building        |
      | 24 FC Building        |
      | 25 FC Building        |
      | 26 FC Building        |
      | 27 FC Building        |
      | 28 FC Building        |
      | 29 FC Building        |
      | 30 FC Building        |
      | 31 FC Building        |
      | 32 FC Building        |
      | 33 FC Building        |
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
      | 13 FC Building        |
      | 14 FC Building        |
      | 15 FC Building        |
      | 16 FC Building        |
      | 17 FC Building        |
      | 18 FC Building        |
      | 19 FC Building        |
      | 20 FC Building        |
      | 21 FC Building        |
      | 22 FC Building        |
      | 23 FC Building        |
      | 24 FC Building        |
      | 25 FC Building        |
      | 26 FC Building        |
      | 27 FC Building        |
      | 28 FC Building        |
      | 29 FC Building        |
      | 30 FC Building        |
      | 31 FC Building        |
      | 32 FC Building        |
      | 33 FC Building        |
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
      | 26 FC Building        |
      | 33 FC Building        |
    And I click on "Return to requirements"
    And I click on "Continue to results"
    And I am on "Estimated contract cost" page
    When I click on "Continue"
    And I am on "Results" page
