Feature: Login to legal services

     Background: login ls
        Given I am on the legal services start page
        And I click on "Start now"
        And I am on "Sign in to your legal services buyer account" page
        Then I sign in to the buyer account
        Then I am logged in successfully

    Scenario: error messages not CG worker (Lots1-4) 
        Given I am on "Do you work for central government?" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select yes if you work for central government |
        When I click on "No" option
        And I click on "Continue"
        And I am on "Select the lot you need" page
        And I click on "Continue"
        Then I should see the following error messages
            | Select the lot you need  |
