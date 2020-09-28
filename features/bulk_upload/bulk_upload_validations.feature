@bulk_upload
Feature:  FM - Bulk Upload Validations

  Scenario Outline: Bulk Upload validations
    When I create a new procurement
    And I click on "Click here to download an Excel template"
    And I click on "Continue to upload your file"
    And I am on "Upload your spreadsheet" page
    And I upload the "<file_type>" file
    And I click on "Upload my services and buildings"
    Then I am on "Upload your spreadsheet" page
    And I should see the following error messages
      | <error>  |
    
    Examples:
      | file_type       | error                                                                                                       |
      | no file         | Select your 'Services and buildings template'                                                               |
      | empty           | The selected file is using the 'Services and buildings template', but is empty                              |
      | incomplete      | The selected file could not be uploaded. Cell B10 must be 'Ready' on the Instructions tab of your template  |
      | wrong template  | The selected file must use the 'Services and buildings template'                                            |
      | wrong file type | The selected file must be a XLSX                                                                            |
