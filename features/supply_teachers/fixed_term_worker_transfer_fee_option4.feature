Feature: Supply Teacher Calculating fixed term transfer fee charges

    Background: login ST
        Given I am logged in to supply teachers

     Scenario: User selects to work out fixed term transfer fee
        Given  I am on "What is your school looking for?" page
        And I click on "To work out what fixed-term worker transfer fee I could be charged" option
        And I click on "Continue"
        Then I am on "What date did the workers fixed term contract start?" page
        When I enter day as "3"
        And I enter month as "1"
        And I enter year as "2022"
        And I click on "Continue"
        Then I am on "What date did the workers fixed term contract end?" page
        When I enter end day as "3"
        And I enter end month as "3"
        And I enter end year as "2022"
        And I click on "Continue"
        Then I am on "What date do you want their fully permanent employment to start?" page
        And I enter full employment start day as "03"
        And I enter full employmeny start month as "6"
        And I enter full employment start year as "2022"
        And I click on "Continue"
        Then I am on "If you wait and do not employ until 03 Sep 2022, you won't be charged a transfer fee." page
        When I click on "I don't want to wait that long - continue to calculate fee"
        Then I am on "What fixed term fee did you pay the worker?" page
        When I enter fixed term fee as "3000"
        And I click on "Continue"
        Then I am on "You could be charged £15,000.00" page
