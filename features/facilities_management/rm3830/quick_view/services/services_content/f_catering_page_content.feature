Feature:  Facilities Management - Services - Catering - Page Content

  Scenario: FM - Services - Catering Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all
    When I click on "Catering services"
    Then the following "Catering services" are displayed:
      | Chilled potable water               |
      | Retail services / convenience store |
      | Deli/coffee bar                     |
      | Events and functions                |
      | Full service restaurant             |
      | Hospitality and meetings            |
      | Outside catering                    |
      | Trolley service                     |
      | Vending services (food & beverage)  |
      | Residential catering services       |
    Then the following descriptions for "Catering services" are displayed:
      | The provision of chilled potable water                                                                                                                    |
      | Provision of a self-service retail outlet offering chilled food, beverages, confectionery and non-food items                                              |
      | Provision of a counter service offering with a mix of ready-made items and made to order choices                                                          |
      | Provision of on-demand catering service for events and functions as required                                                                              |
      | A full service restaurant provision offering freshly prepared meals, snacks and beverages with seating areas                                              |
      | An on-demand service providing working lunches, beverages, hot meals and buffets                                                                          |
      | Providing an on-demand outside catering service as required                                                                                               |
      | Supplier shall provide a trolley service offering a range of snacks and hot/cold beverages which follows a pre-determined route                           |
      | A vending service that will include hot and cold drinks, sweets and snacks, fresh fruit and pre-packed food items                                         |
      | Catering services for full time residents within a buyers premises, examples include a full board food offering comprising breakfast, luncheon and dinner |
    Then I should see text "No services selected" in the selection basket
    When I select all "Catering services"
    Then I should see text "10 services selected" in the selection basket
    When I select all "Catering services"
    Then I should see text "No services selected" in the selection basket
