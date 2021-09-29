@prod_test
Feature:  Facilities Management - Home Page Content

  Background:
    Given I am a logged in user - buildings account - for "RM3830"

  Scenario: FM - Procurements - Home Page Content
    Given I am on your account page
    Then the following home page content is displayed:
      | Your account                                                                                                  |
      | Quick view suppliers                                                                                          |
      | Quickly view suppliers who can provide services to your locations                                             |
      | Start a procurement                                                                                           |
      | See shortlisted suppliers, estimated contract costs, and explore direct award or further competition options  |
      | Continue a procurement                                                                                        |
      | Open your procurements dashboard to view                                                                      |
      | and continue existing saved procurements                                                                      |
      | Manage my buildings                                                                                           |
      | Set up and manage your buildings for use in procurements                                                      |
      | Manage my details                                                                                             |
      | Update and edit your contact details                                                                          |

  Scenario: FM - Procurements - Link - Quick search - Page Content
    When I click on "Quick view suppliers"
    And I am on "Services" page

  Scenario: FM - Procurements - Link - Manage procurements - Page Content
    When I click on "Continue a procurement"
    Then I am on "Procurements dashboard" page

  Scenario: FM - Procurements - Link - Manage buildings - Page Content
    When I click on "Manage my buildings"
    Then I am on "Buildings" page

  Scenario: FM - Procurements - Link - Manage your details - Page content
    When I click on "Manage my details"
    Then I am on "Manage your details" page
