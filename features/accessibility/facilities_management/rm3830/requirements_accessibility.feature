@accessibility
Feature:  FM - Requirements - Accessibility

  Background: Login
    Given I am a logged in user for "RM3830"

  Scenario: FM - Requirements page
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    Then the page should be axe clean

  Scenario: FM - Requirements page - estimated contract cost
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Estimated annual cost"
    And I am on "Estimated annual cost" and "Do you know your current or estimated annual cost?" page
    Then the page should be axe clean

  Scenario: FM - Requirements page - TUPE
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "TUPE"
    And I am on "TUPE" page
    Then the page should be axe clean

  Scenario: FM - Requirements page - Contract period
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    Then the page should be axe clean

  Scenario: FM - Requirements page - Contract period summary
    Then I should see the navigation panel has sign out link
    When I click on "Start a procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I am on "Contract name" page
    And I add contract name
    And I click on "Save and continue"
    And I am on "Requirements" page
    And I click on "Contract period"
    And I am on "Contract period" page
    And I enter "2" years and "0" months for the contract period
    And I enter "today" as the inital call-off period start date
    And I select "No" for mobilisation period required
    And I select "No" for optional extension required
    And I click on "Save and continue"
    Then the page should be axe clean

  Scenario: FM - Requirements - Services
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on show all sections
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Services"
    And I am on "Services summary" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Services
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on show all sections
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Buildings"
    And I am on "Buildings" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Buildings
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on show all sections
    And I check "Tees Valley and Durham"
    And I click on "Continue"
    And I am on "Quick view results" page
    And I add contract name
    And I click on "Save and continue to procurement"
    And I am on "What happens next" page
    And I click on "Continue"
    And I click on "Buildings"
    And I am on "Buildings" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Assigning services to buildings
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I click on "Assigning services to buildings"
    And I am on "Assigning services to buildings summary" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Service requirements
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    Then the page should be axe clean


  Scenario: FM - Requirements - Service requirements - Building standards
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mechanical and electrical engineering maintenance"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "Mechanical and electrical engineering maintenance" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Service requirements - service volumes
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Mobile cleaning"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "Mobile cleaning services" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Service requirements - Lift
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Lifts, hoists & conveyance systems maintenance "
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "Lifts, hoists & conveyance systems maintenance" page
    Then the page should be axe clean

  Scenario: FM - Requirements - Service requirements - Service Hours
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on show all sections
    And I check "Taxi booking service"
    And I am on requirements page
    Then I answer contract details question
    And I answer contract period question
    And I select building
    And I assign services to buildings
    And I click on "Service requirements"
    And I am on "Service requirements summary" page
    And I click on the first building on the page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "Taxi booking service" page
    Then the page should be axe clean
