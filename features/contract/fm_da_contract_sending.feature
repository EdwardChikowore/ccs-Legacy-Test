Feature: Facilities Management - DA - Contract - Review and Generate

  Background: Login page
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer about the contract question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page

  Scenario: Contract Details - Selection - Send
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
    And I click on the seventh question for "Governing law"
    And I am on "Governing law" page
    And I select english law
    And I click on "Save and continue"
    And I am on "Contract details" page
    And I click on "Continue"
    And I am on "Review and generate documents" page
    And I click on "Generate documents"
    And I am on "Review your contract" page
    And I click on "Create final contract and send to supplier"
    And I am on "Sending the contract" page
    And I click on "Cancel, return to review your contract"
    And I am on "Review your contract" page
    And I click on "Return to procurement dashboard"
    And I am on "Procurements dashboard" page





