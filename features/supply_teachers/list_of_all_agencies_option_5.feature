Feature: A List of all agencies Option 5
    
    Background: login st
    Given I am logged in to supply teachers

    Scenario: User selects option A list of all agencies
        Given I am on "What is your school looking for?" page
        And I click on "A list of all agencies" option
        And I click on "Continue"
        And I am on "All agencies" page
        And I should see multiple agencies
        And I click on "Next"
        And I click on "Previous"  
        And I click on an agency name
        And I am on Agency details page
        And I click on "Back"
        And I am on "All agencies" page
        And I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page