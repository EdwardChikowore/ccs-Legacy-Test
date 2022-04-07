@accessibility
Feature:  FM - Results - Accessibility

  Background: Login and go to quick view
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections

  Scenario: FM - Results
    And I check "Mechanical and electrical engineering maintenance"
    And I click on hide all sections
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I complete service requirements questions
    And I navigate to results page
    And I am on "Results" page
    Then the page should be axe clean

  Scenario: FM - Choose contract value
    And I select services with no service questions
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Continue to results"
    Then I am on "Estimated contract cost" page
    Then the page should be axe clean

  Scenario: FM - Further competition
    And I select services with no service questions
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Continue to results"
    Then I am on "Estimated contract cost" page
    And I choose lot 1a
    And I click on "Continue"
    Then I am on "Results" page
    And I click on "Continue"
    Then I am on "Further competition" page
    And I click on "Save as further competition"
    And I am on the "Download your procurement summary" page
    Then the page should be axe clean

  Scenario: FM - Direct Award - Direct award pricing page
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
    And I answer the "Governing law" contract detail question
    And I am on "Governing law" page
    Then the page should be axe clean
