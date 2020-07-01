#Feature:  Facilities Management - Services - Page Content
#
#  Background:
#    Given I am a logged in user
#    Then I should see the navigation panel has sign out link
#    And I click on "Quick search"
#    And I am on the "Select the facilities management services that you need" page
#    And I click on close all on services page
#
#  Scenario: FM - Services - Page Header - Content
#
#    Then the following "text" is displayed:
#      | Select the facilities management services that you need                                                               |
#      | Choose all facilities management services required within your estate, even if you want services in just one building |
#      |                                                                                                                       |
#    Then clicks "Read the service specification document"
#
#
#  Scenario: FM - Services - Error Message
#
#    When I click on "Continue"
#    Then the following is displayed:
#      | There is a problem                                                  |
#      | Select at least one service you need to include in your procurement |
#      |                                                                     |