Feature:  Facilities Management - Services - Statutory Obligations - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page

  Scenario: FM - Services - Statutory Obligations - Content

    When I click on "Statutory obligations"
    Then The following statutory services are displayed:
      | Asbestos management                                         |
      | Water hygiene maintenance                                   |
      | Statutory inspections                                       |
      | Compliance plans, specialist surveys and audits             |
      | Conditions survey                                           |
      | Electrical testing                                          |
      | Fire risk assessments                                       |
      | Portable appliance testing                                  |
      | Building information modelling and government soft landings |
      |                                                                    |
    Then The following description is displayed:
      | Ensuring buyer premises are statutory compliant with asbestos regulations. Managing asbestos register and surveys                                          |
      | Water hygiene maintenance services including statutory compliance, risk assessments, cleaning regime, inspection and monitoring                            |
      | Statutory inspections and certification, air monitoring, risk assessments, insurance inspections. Achieve and maintain statutory compliance                |
      | Provision of full compliance plans, specialist surveys and audit service                                                                                   |
      | Manage condition surveys that shall cover all systems, assets and building fabric                                                                          |
      | Electrical installation condition reports in accordance with current regulations                                                                           |
      | Review of fire risk assessment and fire safety plans. Subsequent reviews to ensure compliance                                                              |
      | Portable appliance testing service for buyers equipment                                                                                                    |
      | Delivery of strategic priorities related to the wider government policy in line with building information modelling (level 2) and government soft landings |
    Then I should see text "No services selected" in the service selection basket
    When I select all statutory services
    Then I should see text "9 services selected" in the service selection basket
    When I select all statutory services
    Then I should see text "No services selected" in the service selection basket