@accessibility
Feature:  FM - DA Draft -Accessibility

  Background: Login and go to quick view
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I click on hide all sections
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page

  Scenario: FM - DA Draft - What happens next
    And I click on "Return to results"
    And I click on the "Direct award" route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Important information
    And I click on "Return to results"
    And I click on the "Direct award" route to market
    And I click on "Continue"
    And I am on "Direct award pricing" page
    And I click on "Continue"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Important information" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Contract page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Payment method
    And I answer the "Payment method" contract detail question
    And I am on "Payment method" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Invoicing contact details
    When I answer the "Invoicing contact details" contract detail question
    And I am on "Invoicing contact details" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Authorised representative details
    When I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - New authorised representative details
    When I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - New authorised representative details - Find address
    When I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Postcode  | SW1W 9SZ  |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    Then the page should be axe clean

  Scenario: FM - DA Draft - New authorised representative details - Add address
    When I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Postcode  | SW1W 9SZ  |
    And I click on "Find address"
    And I click on the link with text 'Enter address manually, if you can’t find address'
    And I am on "Add address" page
    And I click on "Continue"
    Then the page should be axe clean

  Scenario: FM - DA Draft - Notices contact details
    When I answer the "Notices contact details" contract detail question
    And I am on "Notices contact details" page
    Then the page should be axe clean

  Scenario: FM - DA Draft - Security policy document - Option Yes - Error messages
    When I answer the "Security policy" contract detail question
    And I am on "Security policy document" page
    When I select "Yes" for the security policy document question
    And I click on "Save and return"
    Then the page should be axe clean

  Scenario: FM - DA Draft - Local Government Pension Scheme
    When I answer the "Local Government Pension Scheme" contract detail question
    And I am on "Local Government Pension Scheme" page
    And I click on "Save and continue"
    Then the page should be axe clean

  Scenario: FM - DA Draft - Local Government Pension Scheme - Yes
    When I answer the "Local Government Pension Scheme" contract detail question
    And I am on "Local Government Pension Scheme" page
    When I select "Yes" for the LGPS question
    And I click on "Save and continue"
    And I click on "Save and return"
    Then the page should be axe clean

  Scenario: FM - Local Government Pension Scheme - Yes - 5 Empty
    When I answer the "Local Government Pension Scheme" contract detail question
    And I am on "Local Government Pension Scheme" page
    When I select "Yes" for the security policy document question
    And I click on "Save and continue"
    And I add 98 pension funds
    Then I click on "Save and return"
    Then the page should be axe clean

  Scenario: FM - Review and generate documents
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
    Then the page should be axe clean

  Scenario: FM - DA - Review your contract
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
    Then the page should be axe clean


  Scenario: FM - DA - Sending the contract
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
    And I click on "Create final contract and send to supplier"
    And I am on "Sending the contract" page
    Then the page should be axe clean

  Scenario: FM - DA - Sending the contract
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
    And I click on "Create final contract and send to supplier"
    And I am on "Sending the contract" page
    And I click on "Confirm and send contract to supplier"
    And I am on the "What happens next" page
    Then the page should be axe clean