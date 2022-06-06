Feature: ST Agency Option 1 Managing nominated Worker

Background: login st
    Given I am logged in to supply teachers

    Scenario: User selects option No for agency supplying worker
    Given I am on "What is your school looking for?" page
    And I click on "An agency who can provide my school with an individual worker" option
    And I click on "Continue"
    Then I am on "Do you want an agency to supply the worker?" page
    And I click on "No, I have a worker I want the agency to manage (a ‘nominated worker’)" option
    And I click on "Continue"
    Then I am on "What is your school’s postcode?" page
    And I enter postcode as "SW1A 1AA"
    And I click on "Continue"
    Then I am on "Agency results" page 
    And I click on "Download shortlist of agencies"
    And The excel file "Shortlist of agencies" should download successfully        
    And I click on "Download shortlist (with markup calculator)"
    And The excel file "Shortlist of agencies (with calculator)" should download successfully

        
  
        