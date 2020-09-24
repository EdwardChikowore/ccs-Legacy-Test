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
    Then I should see the price displayed £149,322.21

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
    Then I complete the contract details
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
    And there are buildings with missing regions
