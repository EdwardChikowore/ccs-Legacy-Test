Feature: ST Agency Option 2 master vendor

    Scenario: User selects option managed service provider - Master Vendor
        Given I am a logged in user
        And I have landed on the 'What is your school looking for?' page
        When I select 'An agency to manage all my school's needs; a "managed service provider - Master Vendor"'
        And I click on 'Continue'
        Then the browser navigates to the 'Master vendor managed service providers' page
        And I click on 'Back to start'
        Then I am on the 'Find supply teachers and agency workers' page
