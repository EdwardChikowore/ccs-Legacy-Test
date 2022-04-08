Feature: Facilities Management - DA - Contract - Authorised representative

  Background:
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
    When I answer the "Authorised representative details" contract detail question
    And I am on "Authorised representative details" page

  Scenario: Authorised Representative Details Select - Content
    Then the following is displayed for contact details:
      | Select an authorised representative   |
      | Enter a new authorised representative |

  Scenario: Authorised Representative Details Select - Error message
    Then the following is displayed for contact details:
      | Select an authorised representative   |
      | Enter a new authorised representative |
    When I click on "Continue"
    Then I should see the following error messages:
      | Select one option |

  Scenario: Contract - Authorised Representative Details Select - Select authorised representative
    And I select the buyer details for the contact details
    And I click on "Continue"
    And I am on "Contract details" page
    Then my "Authorised representative details" contact detail name is "Automation Test, Test Analyst"

  Scenario: Contract - Authorised Representative Details Select - New authorised representative details - Error messages
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I click on "Save and return"
    Then I should see the following error messages:
      | Enter the new authorised representative name                                        |
      | Enter the new authorised representative job title                                   |
      | Enter an email address in the correct format, for example name@organisation.gov.uk  |
      | Enter a valid postcode, for example SW1A 1AA                                        |
      | Enter a UK telephone number, for example 020 7946 0000                              |

  Scenario: Contract - Authorise Representative Details Select - Select new authorised representative - Select Address Error message
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
      | Telephone number     | 07749228342    |
    And I click on "Save and return"
    Then I should see the following error messages:
      | Select an address from the list or add a missing address |

  Scenario: Contract - Authorise Representative Details Select - Select new authorised representative - Add Address Error message
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
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

  Scenario: Contract - Authorise Representative Details Select - Select new authorised representative - Add Address
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
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

  Scenario: Contract - Authorise Representative Details Select - Select new authorised representative - Add Address - Return without save
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
      | Telephone number     | 07749228342    |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Return to authorised representative details"
    Then I am on "Authorised representative details" page

  Scenario: - Contract - Authorise Representative Details Select - Select new authorised representative - Add Address - Save
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
      | Telephone number     | 07749228342    |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Save and return"
    Then I am on "Authorised representative details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "151 Buckingham Palace Road, London SW1W 9SZ" for the contact detail address
    And I click on "Continue"
    And I am on "Contract details" page
    And my "Authorised representative details" contact detail name is "Auto Test, Test Analyst"
    Then I open the details for the "Authorised representative details"
    And my "Authorised representative details" contact details are as follows:
      | test@test.com                               |
      | 07749228342                                 |
      | 151 Buckingham Palace Road, London SW1W 9SZ |

  Scenario: - Contract - Authorise Representative Details Select - Select new authorised representative - Add Address manually - Save
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
      | Telephone number     | 07749228342    |
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
    And I am on "Authorised representative details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "112 Strongbow Road, Westminister NW1 4DF" for the contact detail address

  Scenario: - Contract - Authorise Representative Details Select - Select new authorised representative - change address - Save
    When I select "Enter a new authorised representative" for the contact details
    And I click on "Continue"
    And I am on "New authorised representative details" page
    And I enter the following details into the form:
      | Name                 | Auto Test      |
      | Job title            | Test Analyst   |
      | Email address        | test@test.com  |
      | Postcode             | SW1W 9SZ       |
      | Telephone number     | 07749228342    |
    And I click on "Find address"
    And I select "151 Buckingham Palace Road, London" from the address drop down
    And I click on "Save and return"
    Then I am on "Authorised representative details" page
    And I should see "Auto Test, Test Analyst" for the contact detail name
    And I should see "151 Buckingham Palace Road, London SW1W 9SZ" for the contact detail address
    And I click on "Change"
    And I enter the following details into the form:
      | Name              | Sam Smith         |
      | Job title         | Project Manager   |
      | Email address     | test123@test.com  |
      | Telephone number  | 07749228342       |
    And I change my contact detail address
    And I enter the following details into the form:
      | Postcode  | L3 9PP  |
    And I click on "Find address"
    And I select "90 Old Hall Street, Liverpool" from the address drop down
    And I click on "Save and return"
    And I am on "Authorised representative details" page
    And I should see "Sam Smith, Project Manager" for the contact detail name
    And I should see "90 Old Hall Street, Liverpool L3 9PP" for the contact detail address
    And I click on "Continue"
    And my "Authorised representative details" contact detail name is "Sam Smith, Project Manager"
    Then I open the details for the "Authorised representative details"
    And my "Authorised representative details" contact details are as follows:
      | test123@test.com                      |
      | 07749228342                           |
      | 90 Old Hall Street, Liverpool L3 9PP  |
