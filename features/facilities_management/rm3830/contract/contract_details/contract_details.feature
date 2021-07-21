Feature: Facilities Management - DA - Contract - Review and Generate

  Background: Login page
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page


  Scenario: Contract Details - Content
  And I am on "Contract details" page
  And the following is displayed:
    | Payment method                  |
    | Invoicing contact details       |
    | Authorised representative       |
    | Notices contact details         |
    | Security policy                 |
    | Local Government Pension Scheme |
    | Governing law                   |


  Scenario: Contract Details - Main Links
    And I am on "Contract details" page
    And I answer the "Payment method" contract detail question
    And I am on "Payment method" page
    And I click on "Return to contract details"
    And I answer the "Invoicing contact details" contract detail question
    And I am on "Invoicing contact details" page
    And I click on "Return to contract details"
    And I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    And I click on "Return to contract details"
    And I answer the "Notices contact details" contract detail question
    And I am on "Notices contact details" page
    And I click on "Return to contract details"
    And I answer the "Security policy" contract detail question
    And I am on "Security policy document" page
    And I click on "Return to contract details"
    And I answer the "Local Government Pension Scheme" contract detail question
    And I am on "Local Government Pension Scheme" page
    And I click on "Return to contract details"
    And I am on "Contract details" page
    And I answer the "Governing law" contract detail question
    And I am on "Governing law" page
    And I click on "Return to contract details"
    And I am on "Contract details" page


  Scenario: Contract Details - Continue button - Error Message
    And I am on "Contract details" page
    And I click on "Continue"
    Then I should see the following error messages:
      | You must answer the question about ‘Payment method’                    |
      | You must answer the question about ‘Invoicing contact details’         |
      | You must answer the question about ‘Authorised representative details’ |
      | You must answer the question about ‘Notices contact details’           |
      | You must answer the question about ‘Security policy’                   |
      | You must answer the question about ‘Local Government Pension Scheme’   |
      | You must answer the question about ‘Governing law’                     |


  Scenario: Contract Details - Return to results button
    And I am on "Contract details" page
    And I click on "Return to results"
    And I am on "Results" page


  Scenario: Contract Details - Return to procurement dashboard link
    And I am on "Contract details" page
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page

