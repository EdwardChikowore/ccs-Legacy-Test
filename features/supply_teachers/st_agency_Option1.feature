Feature: ST Agency Option 1 Indiv Worker

    Scenario: User selects option Yes for agency supplying worker/managing pay
        Given I am a logged in user
        And I have landed on the 'What is your school looking for?' page
        When I dont select a option and click on 'Continue'
        Then an error message is displayed in the box titled "There is a problem" 

        When I select 'An agency who can provide my school with an individual worker'
        And I click on 'Continue'
        Then the browser navigates to the 'Do you want an agency to supply the worker?' page
        
        When I dont select a option and click on 'Continue'
        Then an error message is displayed in the box titled "There is a problem"

        When I select the 'Yes' option for 'Do you want an agency to supply the worker?' 
        And click on 'Continue'
        And the 'Do you want the agency to manage the worker’s pay?' page is displayed
        And I select the 'Yes' option 
        And click on 'Continue'
        Then the 'School postcode and worker requirements: Find supply teachers and agency staff: Crown Commercial Service' page is displayed
        
        When I enter the postcode 'sw1 1aa'
        And I select 'Qualified teacher: non-SEN roles'
        And I select 'Up to 1 week'
        And click on 'Continue'
        Then 'Agency results' page appears
        
        When I enter an amount in the 'Enter daily rate' field
        And click enter on keyboard/mouse click
        Then the 'Cost of the worker' & 'Agency fee' amounts are displayed

        And I click on link 'Download shortlist of agencies'
        And the Shortlist is downloaded
        And I click on link 'Download shortlist (with markup calculator)'
        And the Shortlist is downloaded
        And I click on 'Back to start'
        Then I am on the 'Find supply teachers and agency workers' page

    Scenario: User selects option No for agency supplying worker
        Given I am a logged in user
        And I have landed on the 'What is your school looking for?' page
        When I dont select a option and click on 'Continue'
        Then an error message is displayed in the box titled "There is a problem" 

        When I select 'An agency who can provide my school with an individual worker'
        And I click on 'Continue'
        Then the browser navigates to the 'Do you want an agency to supply the worker?' page

        When I select the option 'no'
        And I click on 'Continue'
        And I enter postcode
        And I click on 'Continue'
        Then 'Agency results' page appears
        
        When I enter an amount in the 'Enter daily rate' field
        And click enter on keyboard/mouse click
        Then the 'Cost of the worker' & 'Agency fee' amounts are displayed

        And I click on link 'Download shortlist of agencies'
        And the Shortlist is downloaded
        And I click on link 'Download shortlist (with markup calculator)'
        And the Shortlist is downloaded
        And I click on 'Back to start'
        Then I am on the 'Find supply teachers and agency workers' page

    Scenario: User selects option Yes for agency supplying worker and No for managing pay
        Given I am a logged in user
        And I have landed on the 'What is your school looking for?' page
        When I dont select a option and click on 'Continue'
        Then an error message is displayed in the box titled "There is a problem" 

        When I select 'An agency who can provide my school with an individual worker'
        And I click on 'Continue'
        Then the browser navigates to the 'Do you want an agency to supply the worker?' page
        
        When I dont select a option and click on 'Continue'
        Then an error message is displayed in the box titled "There is a problem"

        When I select the 'Yes' option for 'Do you want an agency to supply the worker?' 
        And click on 'Continue'
        And the 'Do you want the agency to manage the worker’s pay?' page is displayed
        And I select the 'No' option 
        And click on 'Continue'
        Then the 'What date do you want the employee to start?' page is displayed
        
        When I enter the date for start of employment period
        And click on 'Continue'
        And I enter the date for ending of employment period
        And click on 'Continue'
        And I enter the Annual Salary
        And I enter the postcode
        And I click on Continue
        Then 'Agency results' page appears
        And I click on link 'Download shortlist of agencies'
        And the Shortlist is downloaded
        And I click on 'Back to start'
        Then I am on the 'Find supply teachers and agency workers' page