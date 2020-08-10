Feature:Facilities Management - DA - Contract - Review contract

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    When I am on detailed search page
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

    Scenario:Contract Details - Review and Generate - Section
      And I should see the following sections:
        |1. Requirements|
        |2. Contract details|
        |3. Generate your direct award documents|
      And I click on "Change requirements"
      And I am on "Detailed search summary" page

  Scenario: Contract Details - Review and Generate - Content - Requirements section
    And The following is displayed:
      | Supplier                                                                                                                                              |
      | Contract name                                                                                                                                         |
      | Contract value                                                                                                                                        |
      | Framework, sub-lot                                                                                                                                    |
      | Route to market                                                                                                                                       |
      | Initial call-off period                                                                                                                               |
      | Mobilisation period                                                                                                                                   |
      | Date of first indexation                                                                                                                              |
      | Buildings and services                                                                                                                                |
    And The following detail is displayed:
      |RM3830, sub-lot 1a|
      |Direct award      |
    And I click on "Change contract details"
    And I am on "Contract details" page

    Scenario: Contract Details - Review and Generate - Content - Contract details section
      And The following is displayed:
        | Payment method                                                                                  |
        | Invoicing contact details                                                                       |
        | Authorised representative details                                                               |
        | Notices contact details                                                                         |
        | Security policy                                                                                 |
        | Initial call-off period                                                                         |
        | Local Government Pension Scheme                                                                 |
      And The following detail is displayed:
        |BACS payment      |
      And I click on "Return to results"
      And I am on "Results" page

    Scenario: Contract Details - Review and Generate - Content - Expand details
      And I expand the Initial call-off period
      And I expand the Mobilisation period
      And I expand the Buildings and services
      And I expand the Invoicing contact details - review your contract
#      And I expand the Authorised representative details - review your contract
      And I expand the Notices contact details - review your contract
      And I click on "Return to procurement dashboard"
      And I am on "Procurements dashboard" page




