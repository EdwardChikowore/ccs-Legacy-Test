@bulk_upload
Feature:  FM - Bulk Upload Journey - no upload

  Background: Login page
    When I create a new procurement
    And I click on "Click here to download an Excel template"
    Then I am on "Services and buildings - spreadsheet" page

  Scenario: Services and buildings - spreadsheet - save for later
    And I click on "Save and return to procurements dashboard"
    Then I am on "Procurements dashboard" page

  Scenario: Services and buildings - spreadsheet - save for later and return
    And I click on "Save and return to procurements dashboard"
    And I am on "Procurements dashboard" page
    And I click on contract name
    Then I am on "Services and buildings - spreadsheet" page

  Scenario: Services and buildings - spreadsheet - Cancel and return to procurement summary
    And I click on "Cancel and return to requirements"
    Then I am on "Requirements" page

  Scenario: Services and buildings - spreadsheet - Continue to upload your file
    And I click on "Continue to upload your file"
    Then I am on "Upload your spreadsheet" page
