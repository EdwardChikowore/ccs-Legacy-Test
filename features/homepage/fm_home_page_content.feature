Feature:  Facilities Management - Home Page Content

  Background:
    Given I am a logged in user

  Scenario: FM - Procurements - Home Page Content

    Then the following home page content is displayed:
#      | Crown Commercial Service                                   |
      | Find a facilities management supplier                      |
      | Your account                                              |
      | Procurements                                               |
      | Buildings                                                  |
#      | Manage your CCS account                                    |
      | Quick search                                    |
      | Quick search for suppliers or create a new procurement     |
      | Procurements dashboard                                     |
      | See a list of your search results and procurements         |
      | Manage buildings                                           |
      | Create and manage your buildings used in your procurements |
      | Manage your details                                         |


  Scenario: FM - Procurements - Link - Quick search - Page Content

    When I click on "Quick search"
    And I am on "Services" page

  Scenario: FM - Procurements - Link - Manage procurements - Page Content
    When I click on "Procurements dashboard"
    Then I am on "Procurements dashboard" page

  Scenario: FM - Procurements - Link - Manage buildings - Page Content
    When I click on "Manage buildings"
    Then I am on "Manage buildings" page


  Scenario: FM - Procurements - Link - Manage your details - Page content
    When I click on "Manage your details"
    Then I am on "Manage your details" page

