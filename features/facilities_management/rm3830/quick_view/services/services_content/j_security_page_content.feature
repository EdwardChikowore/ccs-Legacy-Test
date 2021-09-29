Feature:  Facilities Management - Services - Security - Page Content

  Scenario: FM - Services - Security Services - Content
    Given I am a logged in user for "RM3830"
    Then I should see the navigation panel has sign out link
    When I click on "Quick view suppliers"
    And I am on the "Select the facilities management services that you need" page
    And I click on close all
    When I click on "Security services"
    Then the following "Security services" are displayed:
      | Manned guarding service                           |
      | CCTV / alarm monitoring                           |
      | Control of access and security passes             |
      | Emergency response                                |
      | Patrols (fixed or static guarding)                |
      | Management of visitors and passes                 |
      | Reactive guarding                                 |
      | Additional security services                      |
      | Enhanced security requirements                    |
      | Key holding                                       |
      | Lock up / open up of buyer premises               |
      | Patrols (mobile via a specific visiting vehicle)  |
    Then the following descriptions for "Security services" are displayed:
      | Guarding service including building access control, alarm response, monitoring security, patrols, building passes, and perimeter guarding   |
      | Managing all CCTV systems on the buyers premise, monitoring activity, and providing evidence footage where necessary                        |
      | Managing the control of access and security passes, produce passes as required, and manage the log of visitors                              |
      | Provision of emergency response service, including alarm responses, and manage plans to deal with emergency situations                      |
      | Fixed or static guarding service - covering the interior and exterior of each buyer premises                                                |
      | Managing, producing and issuing visitor passes                                                                                              |
      | A reactive guarding service to meet the buyer’s requirements                                                                                |
      | Additional security services for specific sites with particular requirements for example, court or prison security officers                 |
      | Supplier shall provide enhanced security service requirements to meet customers needs                                                       |
      | A professional key holding service - custodian of building access keys and alarm system codes. Compliance with security industry authority  |
      | Key holding, providing assistance to emergency services, and ensuring premises are secure                                                   |
      | Mobile security patrol service for vacant/surplus buyer premises, and on occasion at an occupied buyer premises                             |
    Then I should see text "No services selected" in the selection basket
    When I select all "Security services"
    Then I should see text "12 services selected" in the selection basket
    When I select all "Security services"
    Then I should see text "No services selected" in the selection basket