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
    And I click on "Generate documents"
    And I am on "Review your contract" page

  Scenario: Contract Details - Review your contract
    Then the following is displayed - review your contract:
      | About the direct award                                                                                                                                                |
      | This document tells the supplier important information about the contract you have offered                                                                            |
      | Statement of requirements (deliverables matrix)                                                                                                                       |
      | This document forms the basis of your requirement, and includes your building information, the services you require in each building, and the service specification.  |
      | Annex A - standards & processes                                                                                                                                       |
      | This document sets out the processes, standards and service delivery response times the suppliers must adhere to in delivery of the services                          |
      | Price matrix                                                                                                                                                          |
      | Order form                                                                                                                                                            |
      | Core terms                                                                                                                                                            |
      | Call-off Schedule 1 - Transparency Reports                                                                                                                            |
      | Call-off Schedule 2 - Staff Transfer                                                                                                                                  |
      | Call-off Schedule 3 - Continuous Improvement                                                                                                                          |
      | Call-off Schedule 4 - Facilities Management                                                                                                                           |
      | Call-off Schedule 4A - Billable Work and Projects                                                                                                                     |
      | Call-off Schedule 5 - Call-off Pricing                                                                                                                                |
      | Call-off Schedule 6 - TUPE Surcharge                                                                                                                                  |
      | Call-off Schedule 7 - Key Staff                                                                                                                                       |
      | Call-off Schedule 8 - Business Continuity and Disaster Recovery                                                                                                       |
      | Call-off Schedule 9 - Security                                                                                                                                        |
      | Call-off Schedule 10 - Exit Management                                                                                                                                |
      | Call-off Schedule 13 - Mobilisation Plan and Testing                                                                                                                  |
      | Call-Off Schedule 24 (O) - Scottish Law                                                                                                                               |
      | Call-Off Schedule 25 (O) - Northern Ireland Law                                                                                                                       |
      | Joint Schedule 1 - Definitions                                                                                                                                        |
      | Joint Schedule 2 - Variation Form                                                                                                                                     |
      | Joint Schedule 3 - Insurance Requirements                                                                                                                             |
      | Joint Schedule 5 - Corporate Social Responsibility                                                                                                                    |
      | Joint Schedule 6 - Key Subcontractors                                                                                                                                 |
      | Joint Schedule 7 - Financial Distress                                                                                                                                 |
      | Joint Schedule 10 - Rectification Plan                                                                                                                                |
      | Joint Schedule 11 - Processing Data|
    And I click on "Return to results"
    And I am on "Results" page

  Scenario: Contract Details - Review your contract - Return to procurement dashboad
    And contract documents page have links
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page





