@accessibility
Feature:  FM - Homepage - Accessibility

  Scenario:  FM - Home page
    Given I visit the FM "RM3830" start page
    Then the page should be axe clean

  Scenario:  FM - Login page
    Given I visit the FM "RM3830" start page
    When I click on "Start now"
    Then the page should be axe clean

  Scenario: FM - Your account page
    Given I am a logged in user for "RM3830"
    When I am on your account page
    Then the page should be axe clean

  Scenario: FM - Manage your details
    Given I am a logged in user for "RM3830"
    When I click on "Manage my details"
    And I am on "Manage your details" page
    Then the page should be axe clean

  Scenario: FM - Procurement dashboard
    Given I am a logged in user for "RM3830"
    When I click on "Continue a procurement"
    And I am on "Procurements dashboard" page
    Then the page should be axe clean