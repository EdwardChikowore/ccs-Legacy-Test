Feature:  Facilities Management - Services - Horticultural - Page Content

  Scenario: FM - Services - Horticultural Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on hide all sections
    When I click on "Horticultural services"
    Then the following "Horticultural services" are displayed:
      | Grounds maintenance services                                  |
      | Tree surgery (arboriculture)                                  |
      | Professional snow & ice clearance                             |
      | Reservoirs, ponds, river walls and water features maintenance |
      | Internal planting                                             |
      | Cut flowers and christmas trees                               |
    Then the following descriptions for "Horticultural services" are displayed:
      | Grounds maintenance services including planned and reactive maintenance, and hard and soft landscaping maintenance          |
      | Tree surgery service, including development and implementation of an arboriculture management plan, and ad hoc tree surgery |
      | Professionally managed and proactive snow and ice clearance service                                                         |
      | Maintenance services and inspection reports for reservoirs, ponds, river walls and water features                           |
      | Provision and maintenance of all indoor planting                                                                            |
      | Cut flowers and christmas tree service                                                                                      |
    Then I should see text "No services selected" in the selection basket
    When I select all "Horticultural services"
    Then I should see text "6 services selected" in the selection basket
    When I select all "Horticultural services"
    Then I should see text "No services selected" in the selection basket
