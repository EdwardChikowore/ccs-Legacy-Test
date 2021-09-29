Feature: Facilities Management - DA - Contract - Invoicing contact

  Background:
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Close all"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I proceed to the contract details page
    And I am on "Contract details" page
    When I answer the "Invoicing contact details" contract detail question
    And I am on "Invoicing contact details" page

  Scenario: Invoicing Contact Details Select - Content
    Then the following is displayed for contact details:
      | Select an invoicing contact   |
      | Enter a new invoicing contact |

  Scenario: Invoicing Contact Details Select - Error message
    Then the following is displayed for contact details:
      | Select an invoicing contact   |
      | Enter a new invoicing contact |
    When I click on "Continue"
    Then I should see the following error messages:
      | Select one option |

  Scenario: Contract - Invoicing Contact Details Select - Select invoicing contact
    And I select the buyer details for the contact details
    And I click on "Continue"
    And I am on "Contract details" page
    Then my "Invoicing contact details" contact detail name is "Automation Test, Test Analyst"

  Scenario: Contract - Invoicing Contact Details Select - New invoicing contact details - Error messages
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I click on "Save and return"
    Then I should see the following error messages:
      | Enter the new invoicing contact name                                                |
      | Enter the new invoicing contact job title                                           |
      | Enter an email address in the correct format, for example name@organisation.gov.uk  |
      | Enter a valid postcode, for example SW1A 1AA                                        |

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Select Address Error message
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Save and return"
    Then I should see the following error messages:
      | Select an address from the list or add a missing address |

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address Error message
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I click on the link with text "Enter address manually, if you can’t find address"
    And I am on "Add address" page
    And I click on "Continue"
    Then I should see the following error messages:
      | Enter the building or street name of the address  |
      | Enter the town or city of the address             |
      | Enter a valid postcode, for example SW1A 1AA      |

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I click on the link with text "Enter address manually, if you can’t find address"
    And I am on "Add address" page
    And I enter the following details into the form:
      | Building and street  | 112 Strongbow Road |
      | Town or city         | Westminister       |
      | Postcode             | NW1 4DF            |
    And I click on "Continue"
    Then I should see address:
      | 112 Strongbow Road, Westminister NW1 4DF  |
      | Change                                    |

  Scenario: Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address - Return without save
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Return to invoicing contact details"
    Then I am on "Invoicing contact details" page

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address - Save
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Save and return"
    Then I am on "Invoicing contact details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "151 Buckingham Palace Road, London SW1W 9SZ" for the contact detail address
    And I click on "Continue"
    And I am on "Contract details" page
    And my "Invoicing contact details" contact detail name is "Auto Test, Test Analyst"
    Then I open the details for the "Invoicing contact details"
    And my "Invoicing contact details" contact details are as follows:
      | test@test.com                               |
      | 151 Buckingham Palace Road, London SW1W 9SZ |

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - Add Address manually - Save
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I click on the link with text "Enter address manually, if you can’t find address"
    And I am on "Add address" page
    And I enter the following details into the form:
      | Building and street  | 112 Strongbow Road |
      | Town or city         | Westminister       |
      | Postcode             | NW1 4DF            |
    And I click on "Continue"
    Then I should see address:
      | 112 Strongbow Road, Westminister NW1 4DF  |
      | Change                                    |
    When I click on "Save and return"
    And I am on "Invoicing contact details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "112 Strongbow Road, Westminister NW1 4DF" for the contact detail address

  Scenario: - Contract - Invoicing Contact Details Select - Select new invoicing contact - change address - Save
    When I select "Enter a new invoicing contact" for the contact details
    And I click on "Continue"
    And I am on "New invoicing contact details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Save and return"
    Then I am on "Invoicing contact details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "151 Buckingham Palace Road, London SW1W 9SZ" for the contact detail address
    And I click on "Change"
    And I enter the following details into the form:
      | Name              | Sam Smith         |
      | Job title         | Project Manager   |
      | Email address     | test123@test.com  |
    And I change my contact detail address
    And I enter the following details into the form:
      | Postcode  | L3 9PP  |
    And I click on "Find address"
    And I select "90 Old Hall Street, Liverpool" from the address drop down
    And I click on "Save and return"
    And I am on "Invoicing contact details" page
    And I should see "Sam Smith, Project Manager" for the contact detail name
    And I should see "90 Old Hall Street, Liverpool L3 9PP" for the contact detail address
    And I click on "Continue"
    And my "Invoicing contact details" contact detail name is "Sam Smith, Project Manager"
    Then I open the details for the "Invoicing contact details"
    And my "Invoicing contact details" contact details are as follows:
      | test123@test.com                      |
      | 90 Old Hall Street, Liverpool L3 9PP  |
