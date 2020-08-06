Feature:  Facilities Management - Home Page Content

  Background:
    Given I am a logged in user

  Scenario: FM - Procurements - Home Page Content

    Then the following home page content is displayed:
      | Find a facilities management supplier                                                                               |
      | Your account                                                                                                        |
      | Quick view suppliers                                                                                                |
      | Quickly view suppliers who can provide services to your locations                                                   |
      | Start a procurement                                                                                                 |
      | Start a new procurement to find a suitable supplier, and progress through to contract award or further competition  |
      | Continue a procurement                                                                                              |
      | Open your procurements dashboard to view and continue existing saved procurements                                   |
      | Manage my buildings                                                                                                 |
      | Set up and manage your buildings that can be used in procurements                                                   |
      | Manage my account                                                                                                   |
      | Set up and manage your buildings that can be used in procurements                                                   |
      | Set up and manage your buildings that can be used in procurements                                                   |


  Scenario: FM - Procurements - Link - Quick search - Page Content

    When I click on "Quick view suppliers"
    And I am on "Services" page

  Scenario: FM - Procurements - Link - Manage procurements - Page Content
    When I click on "Continue a procurement"
    Then I am on "Procurements dashboard" page

  Scenario: FM - Procurements - Link - Manage buildings - Page Content
    When I click on "Manage my buildings"
    Then I am on "Manage buildings" page


  Scenario: FM - Procurements - Link - Manage your details - Page content
    When I click on "Manage my account"
    Then I am on "Manage your details" page

