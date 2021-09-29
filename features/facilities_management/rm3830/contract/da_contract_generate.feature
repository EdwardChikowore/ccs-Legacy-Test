Feature:Facilities Management - DA - Contract - Review contract

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

  Scenario:Contract Details - Review and Generate - Section
    And I should see the following sections:
      | 1. Requirements                         |
      | 2. Contract details                     |
      | 3. Generate your direct award documents |
    And I click on "Change requirements"
    And I am on "Requirements" page

  Scenario: Contract Details - Review and Generate - Content - Requirements section
    And the following is displayed:
      | Supplier                  |
      | Contract name             |
      | Contract value            |
      | Framework, sub-lot        |
      | Route to market           |
      | Initial call-off period   |
      | Mobilisation period       |
      | Date of first indexation  |
      | Buildings and services    |
    And the following detail is displayed:
      | RM3830, sub-lot 1a  |
      | Direct award        |
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page

  Scenario: Contract Details - Review and Generate - Content - Contract details section
    And the following is displayed:
      | Payment method                    |
      | Invoicing contact details         |
      | Authorised representative details |
      | Notices contact details           |
      | Security policy                   |
      | Initial call-off period           |
      | Local Government Pension Scheme   |
    And the following detail is displayed:
      | BACS payment  |
    And I click on "Return to results"
    And I am on "Results" page
