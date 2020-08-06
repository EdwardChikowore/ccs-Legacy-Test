Feature:Facilities Management - DA - Contract - Review contract

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Continue to procurement"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I proceed to the contract details page
    And I am on "Contract details" page
    And I click on the first question for "Payment method"
    And I am on "Payment method" page
    And I select Bacs payment
    And I click on "Save and return"
    And I click on the second question for "Invoicing contact details"
    And I am on "Invoicing contact details" page
    And I select invoicing contact
    And I click on "Continue"
    And I click on the third question for "Authorised representative details"
    And I am on "Authorised representative details" page
    And I select Authorised representative details
    And I click on "Continue"
    And I click on the fourth question for "Notices contact details"
    And I am on "Notices contact details" page
    And I select Notices contact details
    And I click on "Continue"
    And I click on the fifth question for "Security policy"
    And I am on "Security policy document" page
    And I select Security policy option
    And I click on "Save and return"
    And I click on the sixth question for "Local Government Pension Scheme"
    And I am on "Local Government Pension Scheme" page
    And I select pension option
    And I click on "Save and continue"
    And I am on "Contract details" page
    And I click on "Continue"
    And I am on "Review and generate documents" page
    And I click on "Generate documents"
    And I am on "Review your contract" page



  Scenario: Contract Details - Review your contract

    Then The following is displayed - review your contract:
      | About the direct award                                                                                                                                                                                                         |
      | This document tells the supplier important information about the contract you have offered                                                                                                                                     |
      | Statement of requirements (deliverables matrix)                                                                                                                                                                                |
      | This document forms the basis of your requirement, and includes your building information, the services you require in each building, and the service specification.                                                           |
      | Annex A - standards & processes                                                                                                                                                                                                |
      | This document sets out the processes, standards and service delivery response times the suppliers must adhere to in delivery of the services                                                                                   |
      | Price matrix                                                                                                                                                                                                                   |
      | Order form                                                                                                                                                                                                                     |
      | Core terms                                                                                                                                                                                                                     |
      | Call-off Schedule 1 - Transparency Reports                                                                                                                                                                                     |
      | Call-off Schedule 2 - Staff Transfer                                                                                                                                                                                           |
      | Call-off Schedule 3 - Continuous Improvement                                                                                                                                                                                   |
      | Call-off Schedule 4 - Facilities Management                                                                                                                                                                                    |
      | Call-off Schedule 4A - Billable Work and Projects                                                                                                                                                                              |
      | Call-off Schedule 5 - Call-off Pricing                                                                                                                                                                                         |
      | Call-off Schedule 6 - TUPE Surcharge                                                                                                                                                                                           |
      | Call-off Schedule 7 - Key Staff                                                                                                                                                                                                |
      | Call-off Schedule 8 - Business Continuity and Disaster Recovery                                                                                                                                                                |
      | Call-off Schedule 9 - Security                                                                                                                                                                                                 |
      | Call-off Schedule 10 - Exit Management                                                                                                                                                                                         |
      | Call-off Schedule 13 - Mobilisation Plan and Testing                                                                                                                                                                           |
      | Joint Schedule 1 - Definitions                                                                                                                                                                                                 |
      | Joint Schedule 2 - Variation Form                                                                                                                                                                                              |
      | Joint Schedule 3 - Insurance Requirements                                                                                                                                                                                      |
      | Joint Schedule 5 - Corporate Social Responsibility                                                                                                                                                                             |
      | Joint Schedule 6 - Key Subcontractors                                                                                                                                                                                          |
      | Joint Schedule 7 - Financial Distress                                                                                                                                                                                          |
      | Joint Schedule 10 - Rectification Plan                                                                                                                                                                                         |
      | Joint Schedule 11 - Processing Data|
    And I click on "Return to results"
    And I am on "Results" page

  Scenario: Contract Details - Review your contract - Return to procurement dashboad
    And contract documents page have links
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page





