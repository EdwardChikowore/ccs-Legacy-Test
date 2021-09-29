@bulk_upload
Feature:  FM - Bulk Upload - Further Competition Journey

  Background: Login and go to upload spreadsheet
    When I create a new procurement
    And I click on "Click here to download an Excel template"
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
    And I upload the "further competition" file
    And I click on "Upload my services and buildings"

  Scenario: Bulk Upload - Upload successful
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"

  Scenario: Bulk Upload - Upload successful - view price
    Then I am on "File upload status" page
    And my upload status is "UPLOAD IN PROGRESS"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD COMPLETED"
    And I click on "Continue to procurement"
    And I am on "Requirements" page
    Then I answer contract details question
    And I answer contract period question
    Then I click on "Continue to results"
    Then I am on "Results" page
    Then I should see the price displayed "£251,026.91"
    And there should be no options