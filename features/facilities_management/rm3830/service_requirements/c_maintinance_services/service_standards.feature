Feature: Maintinance services service standard questions

  Scenario Outline: Service standard questions
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I select "<service>" and navigate to the service requirements page
    When I am on the "Service requirements" page
    And I click on "Answer question"
    And I am on the "<service>" page
    When I click on "Save and return"
    Then I should see the following error messages:
      | Select the level of standard  |
    When I select standard "<standard>"
    And I click on "Save and return"
    Then I am on the "Service requirements" page
    And I click on service standards change link
    Then I am on the "<service>" page
    When I click on "Return to service requirements"
    Then I am on the "Service requirements" page
  
  Examples:
      | service                                             | standard  |
      | Mechanical and electrical engineering maintenance   | A         |
      | Ventilation and air conditioning system maintenance | B         |
      | Environmental cleaning service                      | C         |
      | Fire detection and firefighting systems maintenance | A         |
      | Security, access and intruder systems maintenance   | B         |
      | Internal & external building fabric maintenance     | C         |
      | Building management system (BMS) maintenance        | A         |
      | Standby power system maintenance                    | B         |
      | High voltage (HV) and switchgear maintenance        | C         |
      | Catering equipment maintenance                      | A         |
