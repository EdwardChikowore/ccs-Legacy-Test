@bulk_upload
Feature:  FM - Bulk Upload - Direct Award Journey

  Background: Login and go to upload spreadsheet
    When I create a new procurement
    And I click on "Click here to download an Excel template"
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page

  Scenario: Bulk Upload - Upload in progress
    And I upload the "complete" file
    And I click on "Upload my services and buildings"
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"

  Scenario: Bulk Upload - Upload successful
    And I upload the "complete" file
    And I click on "Upload my services and buildings"
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"

  Scenario: Bulk Upload - Upload successful - view price
    And I upload the "complete" file
    And I click on "Upload my services and buildings"
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"
    And I click on "Continue to procurement"
    And I am on "Requirements" page
    Then I answer contract details question
    And I answer contract period question
    Then I click on "Continue to results"
    Then I should see the price displayed '£203,228.39'

  Scenario: Bulk Upload - Upload successful - send to supplier
    And I upload the "complete" file
    And I click on "Upload my services and buildings"
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"
    And I click on "Continue to procurement"
    And I am on "Requirements" page
    Then I answer contract details question
    And I answer contract period question
    Then I click on "Continue to results"
    And I proceed to the contract details page
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
    And I click on "Generate documents"
    And I click on "Create final contract and send to supplier"
    And I click on "Confirm and send contract to supplier"
    Then I am on "Your contract was sent" page

  Scenario: Bulk Upload - Upload successful - requires building region
    And I upload the "missing regions" file
    And I click on "Upload my services and buildings"
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"
    And I click on "Continue to procurement"
    Then I am on "Review your buildings" page
    And the following buildings are missing regions:
      | Test Bulk Upload Building 3 |
      | Test Bulk Upload Building 7 |
