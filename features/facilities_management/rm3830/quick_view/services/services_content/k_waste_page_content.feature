Feature:  Facilities Management - Services - Waste - Page Content

  Scenario: FM - Services - Waste Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all
    When I click on "Waste services"
    Then the following "Waste services" are displayed:
      | General waste          |
      | Recycled waste         |
      | Classified waste       |
      | Feminine hygiene waste |
      | Hazardous waste        |
      | Clinical waste         |
      | Medical waste          |
    Then the following descriptions for "Waste services" are displayed:
      | Collection, storage and removal of general waste from the supplier premise. Supply of waste dispose reports                                 |
      | Collection and removal of all recyclable waste from the buyer premises                                                                      |
      | Provision of a suitable classified waste service, ensuring the secure collection, storage, removal and disposal of all classified materials |
      | Disposal of feminine hygiene waste and provision of standard sized and suitable receptacles for this type of waste                          |
      | Disposal of hazardous wastes, and provision of suitable receptacles for this type of waste                                                  |
      | Disposal of clinical waste, may include the provision of sharps bins, sanitary towel disposal service and other specialist receptacles      |
      | Disposal of medical and pharmaceutical waste, and provision of suitable receptacles for this type of waste                                  |
    Then I should see text "No services selected" in the selection basket
    When I select all "Waste services"
    Then I should see text "7 services selected" in the selection basket
    When I select all "Waste services"
    Then I should see text "No services selected" in the selection basket