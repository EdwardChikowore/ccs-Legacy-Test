Feature: Supply Teacher Calculating fees to make Agency worker permanent

    Background: login ST
        Given I am logged in to supply teachers

     Scenario: User selects 12 weeks after contract start date and notice 4 weeks for "£0.00" temp-to-perm-fee charge
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "3"
        And I enter month as "1"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
        And I enter agency notice day as "28"
        And I enter agency notice month as "02"
        And I enter agency notice year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged £0.00"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page

     Scenario: User selects 12 weeks after contract start date and notice less than 4 weeks for "£4.76" temp-to-perm-fee charge
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "3"
        And I enter month as "1"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
        And I enter agency notice day as "1"
        And I enter agency notice month as "03"
        And I enter agency notice year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged £4.76"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page

     Scenario: User selects 12 weeks after contract start date and no notice to agency for charged between £0 and £95.24
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "3"
        And I enter month as "1"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged between £0 and £95.24"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page

     Scenario: User selects hire date between 9 and 12 weeks after contract start date and notice is 4 weeks is charged £90.48
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "28"
        And I enter month as "1"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
        And I enter agency notice day as "28"
        And I enter agency notice month as "02"
        And I enter agency notice year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged £90.48"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page

     Scenario: User selects hire date between 9 and 12 weeks after contract start date and notice < 4 weeks is charged £95.24
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "28"
        And I enter month as "1"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
        And I enter agency notice day as "01"
        And I enter agency notice month as "03"
        And I enter agency notice year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged £95.24"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page


      Scenario: User selects hire date less then 8 weeks after contract start date & no notice is charged £190.48
        Given  I am on "What is your school looking for?" page
        And I click on "To calculate the fee my school will be charged if I make an agency worker permanent" option
        And I click on "Continue"
        Then I am on "Find out how much you’ll be charged if you make an agency worker permanent" page
        When I enter day as "28"
        And I enter month as "2"
        And I enter year as "2022"
        And I enter days per week contracted for as "5"
        And I enter "100" amount charge per day
        And I enter "5" for percentage agency mark up charge
        And I enter permanent start day as "28"
        And I enter permanent start month as "3"
        And I enter permanent start year as "2022"
       # And I enter agency notice day as "01"
       # And I enter agency notice month as "03"
       # And I enter agency notice year as "2022"
        And I click on "Continue"
        And I am on the "Temp-to-perm fee" page 
        Then I should see fee as "Based on the information provided you could be charged £190.48"
        When I click on "Back to start"
        Then I am on the "Find supply teachers and agency workers" page
        
        