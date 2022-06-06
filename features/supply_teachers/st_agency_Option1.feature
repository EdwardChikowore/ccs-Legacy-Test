Feature: ST Agency Option 1 Indiv Worker

    Background: login ST
    Given I am logged in to supply teachers

    Scenario: User selects option Yes for agency supplying worker/managing pay
    Given I am on "What is your school looking for?" page
    And I click on "An agency who can provide my school with an individual worker" option
    And I click on "Continue"
    Then I am on "Do you want an agency to supply the worker?" page
    When I click on "Yes" option
    And I click on "Continue"
    Then I am on "Do you want the agency to manage the worker’s pay?" page
    And I click on "Yes" option 
    And I click on "Continue"
    Then I am on "School postcode and worker requirements" page
        
    When I enter postcode as "sw1 1aa"
    And I click on "Qualified teacher: non-SEN roles" option
    And I click on "Up to 1 week" option
    And I click on "Continue"
    Then I am on "Agency results" page        
    And I should see agency "Danluker Limited t/a Supply Care Solutions"
    # And I enter agency_rate as "200"
    # Then I should see Cost of worker "£175.44"      
    #And I should see Agency fee "£24.56"
    # And I click on "Download shortlist of agencies"
    # And The excel file "Shortlist of agencies" should download successfully       
    # And I click on "Download shortlist (with markup calculator)"
    # And The excel file "Shortlist of agencies (with calculator)" should download successfully
   And I click on "Back to start"
   Then I am on "Find supply teachers and agency workers" page
   #  And I click on "Sign out"
   # Then I am on "Sign in to find supply teachers and agency workers" page

   Scenario: User selects option Yes for agency supplying worker and No for Agency managing pay
   Given I am on "What is your school looking for?" page 
   When I click on "An agency who can provide my school with an individual worker" option
   And I click on "Continue"
   And I am on "Do you want an agency to supply the worker?" page
   When I click on "Yes" option
   And I click on "Continue"
   And I am on "Do you want the agency to manage the worker’s pay?" page
   And I click on "No" option 
   And I click on "Continue"
   Then I am on "What date do you want the employee to start?" page
   When I enter day as "3"
   And I enter month as "1"
   And I enter year as "2022"
   And I click on "Continue"
   Then I am on "What date do you want the employee to stop working?" page
   When I enter end day as "3"
   And I enter end month as "1"
   And I enter end year as "2023"
   And I click on "Continue"
   Then I am on "What would the employee's annual salary be?" page
   When I enter "32000" amount salary per year
   And I click on "Continue"
   Then I am on "What is your school’s postcode?" page
   When I enter postcode as "sw1 1aa"
   And I click on "Continue"
   Then I am on "Agency results" page

        