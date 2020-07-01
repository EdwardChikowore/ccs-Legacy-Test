Feature: Facilities Management - Regions - Area - Selection

  Background:
    Given I am a logged in user
    Then I should see the navigation panel has sign out link
    And I click on "Quick search"
    And I am on the "Select the facilities management services that you need" page
    And I click on open all
    And I click on the "Mechanical and electrical engineering maintenance"
    And I click on "Continue"
    And I click on close all on regions page


  Scenario: FM - Locations - Areas within Location - North East England - Content
    And I click on "North East (England)"
    And I click on select all for North East England
    And I should see text "2 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"


  Scenario: FM - Locations - Areas within Location - North West England - Content
    And I click on "North West (England)"
    And I click on select all for North West England
    And I should see text "5 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - Yorkshire and The Humber - Content
    And I click on "Yorkshire and The Humber"
    And I click on select all for Yorkshire and Humber
    And I should see text "4 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - East Midlands (England) - Content
    And I click on "East Midlands (England)"
    And I click on select all for East Midlands
    And I should see text "3 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"


  Scenario: FM - Locations - Areas within Location - West Midlands (England) - Content
    And I click on "West Midlands (England)"
    And I click on select all for West Midlands
    And I should see text "3 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - East of England - Content
    And I click on "East of England"
    And I click on select all for East England
    And I should see text "3 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - London - Content
    And I click on "London"
    And I click on select all for London
    And I should see text "5 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"


  Scenario: FM - Locations - Areas within Location - South East (England) - Content
    And I click on "South East (England)"
    And I click on select all for South East England
    And I should see text "4 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - South West (England) - Content
    And I click on "South West (England)"
    And I click on select all for South West England
    And I should see text "4 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - Wales - Content
    And I click on "Wales"
    And I click on select all for Wales
    And I should see text "12 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - Scotland - Content
    And I click on "Scotland"
    And I click on select all for Scotland
    And I should see text "23 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"

  Scenario: FM - Locations - Areas within Location - Northern Ireland - Content
    And I click on "Northern Ireland"
    And I click on select all for Northern Ireland
    And I should see text "5 Regions selected"
    And I click on "Remove all"
    And I should see text "No regions selected"
