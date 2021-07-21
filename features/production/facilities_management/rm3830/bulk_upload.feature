@bulk_upload @prod_test
Feature:  FM - Bulk Upload - Direct Award Journey

  Background: Login and go to upload spreadsheet
    When I create a new procurement
    And I click on "Click here to download an Excel template"

  Scenario: Bulk Upload - Upload successful
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
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
    Then I am on "Results" page

  Scenario: Bulk Upload - Upload successful - requires building region
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
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

  Scenario: Services and buildings - spreadsheet - save for later and return
    Then I am on "Services and buildings - spreadsheet" page
    And I click on "Save and return to procurements dashboard"
    And I am on "Procurements dashboard" page
    And I click on contract name
    Then I am on "Services and buildings - spreadsheet" page

  Scenario: Services and buildings - spreadsheet - Cancel and return to procurement summary
    Then I am on "Services and buildings - spreadsheet" page
    And I click on "Cancel and return to requirements"
    Then I am on "Requirements" page

  Scenario Outline: Bulk Upload validations - Front end
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
    And I upload the "<file_type>" file
    And I click on "Upload my services and buildings"
    Then I am on "Upload your spreadsheet" page
    And I should see the following error messages:
      | <error>  |
    
    Examples:
      | file_type       | error                                         |
      | no file         | Select your 'Services and buildings template' |
      | wrong file type | The selected file must be a XLSX              |

  Scenario Outline: Bulk Upload validations - Back end
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
    And I upload the "<file_type>" file
    And I click on "Upload my services and buildings"
    And I wait for the upload to finish
    Then my upload status is "UPLOAD FAILED"
    And the reason my upload failed is:
      | <error>  |

    Examples:
      | file_type       | error                                                                                               |
      | empty           | The file is using the 'Services and buildings template', but is empty                               |
      | incomplete      | The file could not be processed. Cell B10 must be 'Ready' on the Instructions tab of your template  |
      | wrong template  | The file must use the 'Services and buildings template'                                             |