Feature: Supply Teacher Calculating fees to make Agency worker permanent

    Background: login ST
        Given I am logged in to supply teachers


     Scenario: User selects 12 weeks after contract start date and notice is 4 weeks
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        
        # When I enter a date for 'When did the worker’s current contract start?'
        # And I enter a number for 'How many days per week is the worker contracted for?'
        # And I enter an amount for 'What does the agency charge you per day for the worker?'
        # And I enter a percentage value for 'What mark-up does the agency charge for the worker?'
        # And I enter a date for 'What date do you want to take the worker on permanently from?'
        # And I click on 'Continue'
        # Then the 'Temp-to-perm fee' page displays £0 charged
        # And I click on 'Back to start'
        # Then I am on the 'Find supply teachers and agency workers' page
