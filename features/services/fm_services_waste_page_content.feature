Feature:  Facilities Management - Services - Waste - Page Content

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all on services page

  Scenario: FM - Services - Waste Services - Content

    When I click on "Waste services"
    Then The following waste services are displayed:
      | General waste          |
      | Recycled waste         |
      | Classified waste       |
      | Feminine hygiene waste |
      | Hazardous waste        |
      | Clinical waste         |
      | Medical waste          |
      |                               |
    Then The following description is displayed:
      | Collection, storage and removal of general waste from the supplier premise. Supply of waste dispose reports                                 |
      | Collection and removal of all recyclable waste from the buyer premises                                                                      |
      | Provision of a suitable classified waste service, ensuring the secure collection, storage, removal and disposal of all classified materials |
      | Disposal of feminine hygiene waste and provision of standard sized and suitable receptacles for this type of waste                          |
      | Disposal of hazardous wastes, and provision of suitable receptacles for this type of waste                                                  |
      | Disposal of clinical waste, may include the provision of sharps bins, sanitary towel disposal service and other specialist receptacles      |
      | Disposal of medical and pharmaceutical waste, and provision of suitable receptacles for this type of waste                                  |
    Then I should see text "No services selected"
    When I select all waste services
    Then I should see text "7 services selected"
    When I select all waste services
    Then I should see text "No services selected"