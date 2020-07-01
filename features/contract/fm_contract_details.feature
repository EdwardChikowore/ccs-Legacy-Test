Feature: Facilities Management - DA - Contract - Review and Generate

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    When I am on detailed search page
    And I click on "Save and continue"
    And I answer about the contract question
    And I answer contract period question
    And I answer services question
    And I proceed to the contract details page
    And I am on "Contract details" page


   Scenario: Contract Details - Content
    And I am on "Contract details" page
    And The following is displayed:
      | Payment method                                                                   |
      | Invoicing contact details                                                        |
      | Authorised representative                                                        |
      | Notices contact details                                                          |
      | Security policy                                                                  |
      | Local Government Pension Scheme                                                  |

    Scenario: Contract Details - Main Links
      And I am on "Contract details" page
      And I click on the first question for "Payment method"
      And I am on "Payment method" page
      And I click on "Return to contract details"
      And I click on the second question for "Invoicing contact details"
      And I am on "Invoicing contact details" page
      And I click on "Return to contract details"
      And I click on the third question for "Authorised representative details"
      And I am on "Authorised representative details" page
      And I click on "Return to contract details"
      And I click on the fourth question for "Notices contact details"
      And I am on "Notices contact details" page
      And I click on "Return to contract details"
      And I click on the fifth question for "Security policy"
      And I am on "Security policy document" page
      And I click on "Return to contract details"
      And I click on the sixth question for "Local Government Pension Scheme"
      And I am on "Local Government Pension Scheme" page
      And I click on "Return to contract details"
      And I am on "Contract details" page


  Scenario: Contract Details - Continue button - Error Message
    And I am on "Contract details" page
    And I click on "Continue"
    Then I should see error message header "There is a problem"
    Then I should see the following error messages
      | You must answer the question about ‘Payment method’                    |
      | You must answer the question about ‘Invoicing contact details’         |
      | You must answer the question about ‘Authorised representative details’ |
      | You must answer the question about ‘Notices contact details’           |
      | You must answer the question about ‘Security policy’                   |
      | You must answer the question about ‘Local Government Pension Scheme’   |


  Scenario: Contract Details - Return to results button
    And I am on "Contract details" page
    And I click on "Return to results"
    And I am on "Results" page

  Scenario: Contract Details - Return to procurement dashboard link
    And I am on "Contract details" page
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page

